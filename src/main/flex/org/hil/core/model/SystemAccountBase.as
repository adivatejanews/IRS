/**
 * Generated by Gas3 v2.1.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (SystemAccount.as).
 */

package org.hil.core.model {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import mx.collections.ListCollectionView;
    import org.granite.meta;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;

    [Managed]
    public class SystemAccountBase extends AbstractEntity {

        private var _accountName:String;
        private var _expired:Boolean;
        private var _locked:Boolean;
        private var _password:String;
        private var _roles:ListCollectionView;

        public function set accountName(value:String):void {
            _accountName = value;
        }
        public function get accountName():String {
            return _accountName;
        }

        public function set expired(value:Boolean):void {
            _expired = value;
        }
        public function get expired():Boolean {
            return _expired;
        }

        public function set locked(value:Boolean):void {
            _locked = value;
        }
        public function get locked():Boolean {
            return _locked;
        }

        public function set password(value:String):void {
            _password = value;
        }
        public function get password():String {
            return _password;
        }

        public function set roles(value:ListCollectionView):void {
            _roles = value;
        }
        public function get roles():ListCollectionView {
            return _roles;
        }

        override meta function merge(em:IEntityManager, obj:*):void {
            var src:SystemAccountBase = SystemAccountBase(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._accountName, _accountName, null, this, 'accountName', function setter(o:*):void{_accountName = o as String}, false);
               em.meta_mergeExternal(src._expired, _expired, null, this, 'expired', function setter(o:*):void{_expired = o as Boolean}, false);
               em.meta_mergeExternal(src._locked, _locked, null, this, 'locked', function setter(o:*):void{_locked = o as Boolean}, false);
               em.meta_mergeExternal(src._password, _password, null, this, 'password', function setter(o:*):void{_password = o as String}, false);
               em.meta_mergeExternal(src._roles, _roles, null, this, 'roles', function setter(o:*):void{_roles = o as ListCollectionView}, false);
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
                _accountName = input.readObject() as String;
                _expired = input.readObject() as Boolean;
                _locked = input.readObject() as Boolean;
                _password = input.readObject() as String;
                _roles = input.readObject() as ListCollectionView;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
                output.writeObject((_accountName is IPropertyHolder) ? IPropertyHolder(_accountName).object : _accountName);
                output.writeObject((_expired is IPropertyHolder) ? IPropertyHolder(_expired).object : _expired);
                output.writeObject((_locked is IPropertyHolder) ? IPropertyHolder(_locked).object : _locked);
                output.writeObject((_password is IPropertyHolder) ? IPropertyHolder(_password).object : _password);
                output.writeObject((_roles is IPropertyHolder) ? IPropertyHolder(_roles).object : _roles);
            }
        }
    }
}
