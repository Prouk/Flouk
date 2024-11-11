{ userName, ... }:
{
    fileSystems."/home/${userName}/2To" = {
        device = "/dev/disk/by-uuid/1fa1f0f8-7fe8-4895-8c1f-a4da0793dcef";
        fsType = "ext4";
    };
}
