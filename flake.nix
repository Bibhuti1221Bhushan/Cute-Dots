{
  description = "Personal Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    hyprland = {
      url = "github:hyprwm/hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { self, nixpkgs, home-manager, ... }:
  
  let

    username = "Bibhuti";
    fullname = "Bibhuti Bhushan";
    hostname = "iTunes";

    system = "x86_64-linux";
    homeConfigurations = home-manager.nixosModules.home-manager;
    lib = nixpkgs.lib;
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

  in {
  
    nixosConfigurations = {
      Laptop = lib.nixosSystem {
	      specialArgs = { inherit inputs username hostname; };
	      modules = [ ./hosts/configuration.nix 
            
    homeConfigurations {
  	  home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        backupFileExtension = "backup";
  	    users.${username} = import ./home.nix;
        extraSpecialArgs = { inherit inputs username; };
        };       
      };
	  ];
  };
}
