/**
 * Generated by Gas3 v2.1.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (Province.as).
 */

package org.hil.core.model {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import org.granite.meta;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;

    [Managed]
    public class ProvinceBase extends AbstractEntity {

        private var _notes:String;
        private var _provinceId:String;
        private var _provinceName:String;
        private var _regionId:Number;

        public function set notes(value:String):void {
            _notes = value;
        }
        public function get notes():String {
            return _notes;
        }

        public function set provinceId(value:String):void {
            _provinceId = value;
        }
        public function get provinceId():String {
            return _provinceId;
        }

        public function set provinceName(value:String):void {
            _provinceName = value;
        }
        public function get provinceName():String {
            return _provinceName;
        }

        public function set regionId(value:Number):void {
            _regionId = value;
        }
        public function get regionId():Number {
            return _regionId;
        }

        override meta function merge(em:IEntityManager, obj:*):void {
            var src:ProvinceBase = ProvinceBase(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._notes, _notes, null, this, 'notes', function setter(o:*):void{_notes = o as String}, false);
               em.meta_mergeExternal(src._provinceId, _provinceId, null, this, 'provinceId', function setter(o:*):void{_provinceId = o as String}, false);
               em.meta_mergeExternal(src._provinceName, _provinceName, null, this, 'provinceName', function setter(o:*):void{_provinceName = o as String}, false);
               em.meta_mergeExternal(src._regionId, _regionId, null, this, 'regionId', function setter(o:*):void{_regionId = o as Number}, false);
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
                _notes = input.readObject() as String;
                _provinceId = input.readObject() as String;
                _provinceName = input.readObject() as String;
                _regionId = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
                output.writeObject((_notes is IPropertyHolder) ? IPropertyHolder(_notes).object : _notes);
                output.writeObject((_provinceId is IPropertyHolder) ? IPropertyHolder(_provinceId).object : _provinceId);
                output.writeObject((_provinceName is IPropertyHolder) ? IPropertyHolder(_provinceName).object : _provinceName);
                output.writeObject((_regionId is IPropertyHolder) ? IPropertyHolder(_regionId).object : _regionId);
            }
        }
    }
}
