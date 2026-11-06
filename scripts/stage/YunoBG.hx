import funkin.play.character.BaseCharacter;
import openfl.filters.ShaderFilter;
import animate.internal.filters.AdjustColorFilter;
import flixel.FlxG;
import funkin.graphics.shaders.AdjustColorShader;
import funkin.modding.events.ScriptEvent;
import funkin.play.stage.StageProp;
import flixel.FlxSprite;
import funkin.play.stage.Stage;



class YunoBG extends Stage {

    var colorShader:AdjustColorShader;

    public function new() {
        super("yunopark");
    }
    public override function buildStage() {
        super.buildStage();
        colorShader = new AdjustColorShader();
        colorShader.brightness = -60;
        colorShader.saturation = -50;
        this.getNamedProp("dabg").x -= 385;
        this.getNamedProp("booppers").shader = colorShader;
        this.getNamedProp("booppers").x += 50;
    }
    public override function onSongStart(event:ScriptEvent) {
        super.onSongStart(event);
        if (getGirlfriend() != null) {
            this.getGirlfriend().screenCenter();
        }
    }
    public override function addCharacter(char:BaseCharacter, type:CharacterType) {
        super.addCharacter(char, type);
        char.shader = colorShader;
    }
}