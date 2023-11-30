//Kill Counter
import { world, Player, EntityHealthComponent, system } from "@minecraft/server";

const overworld = world.getDimension("overworld"),
  nether = world.getDimension("nether"),
  end = world.getDimension("the end");

overworld
  .runCommandAsync("scoreboard objectives add deaths dummy")
  .catch((error) => console.warn(error));
overworld
  .runCommandAsync("scoreboard objectives add kills dummy")
  .catch((error) => console.warn(error));
world.events.entityHurt.subscribe(
  ({ hurtEntity, damageSource }) => {
    /** @type {EntityHealthComponent} */
    // @ts-ignore
    const health = hurtEntity.getComponent("health");
    if (health.current > 0) return;
    hurtEntity.runCommandAsync("scoreboard players add @s deaths 1");
    if (!(damageSource.damagingEntity instanceof Player)) return;
    damageSource.damagingEntity.runCommandAsync("scoreboard players add @s kills 1");
  },
  { entityTypes: ["minecraft:player"] }
);


//Scoreboard with shorteners

  export function getScore(target, objective) {
    try {
      return world.scoreboard.getObjective(objective).getScore(typeof target === `string` ? oB.getParticipants().find(pT => pT.displayName == target) : target.scoreboard)
    } catch {
      return 0
    }
  }

export function metricNumbers(value) {
    const types = ["", "K", "M", "B", "T", "P", "E", "Z", "Y"];
    const selectType = (Math.log10(value) / 3) | 0;
    if (selectType == 0) return value;
    let scaled = value / Math.pow(10, selectType * 3);
    return scaled.toFixed(1) + types[selectType];
  }

function sidebar() {
    system.runInterval(() => {
        for (const player of world.getPlayers()) {
            player.onScreenDisplay.setTitle(`\n • §bCash:§e ${metricNumbers(getScore(player, "money"))}§r \n • §bSouls: §3${metricNumbers(getScore(player, "souls"))}§r \n • §bLevel: §d${metricNumbers(getScore(player, "level"))}§r \n • §bRank:§c x §r\ntest\nt\n\n • §3K/D: §6${metricNumbers(getScore(player, "kills"))}§r/§4${metricNumbers(getScore(player, "deaths"))}§r \n • §3Playtime:§a ${getScore(player, "day")}d ${getScore(player, "hour")}h ${getScore(player, "min")}m§r \n • §3Quest Completion: §5x§r \n\n\n §l§b[Realm] 000000§r \n §l§9[Discord] 0000000§r\n §l§a[Players] ${getScore(player, "online")}`)
        }
    }, 15);
}
system.run(sidebar)

//Bow ding
world.events.projectileHit.subscribe((arg) => {
  if (arg.getEntityHit()?.entity instanceof Player && arg.source instanceof Player) {
    const soundOption = {
        volume: 0.4,
        pitch: 0.5,
    }
    
    arg.source.playSound("random.orb", soundOption);
  };
});