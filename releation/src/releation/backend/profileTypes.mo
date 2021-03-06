import Text "mo:base/Text";

module {

    public type FriendCanister = Principal;
    public type UserId = Principal;
    public type UserName = Text;

    public type CanisterSettings = {
        controllers : [Principal];
    };
    public type UpdateSettingsParams = {
        canister_id: Principal;
        settings: CanisterSettings;
    };
    public type ICActor = actor {
        update_settings: shared(params: UpdateSettingsParams) -> async ();
    };

    public type Profile = {
        id: UserId;
        userName: UserName;
        friendCanister: FriendCanister;
        createdAt: Int;
        updateCanister: Bool;
    };
}
