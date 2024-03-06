{
  description = "Personal Config";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs @ { self, nixpkgs, home-manager, ... }:

  let
  
    Var = rec {
      username = "Bibhuti";
      fullname = "Bibhuti Bhushan";
      hostname = "iTunes";
      timezone = "Asia/Kolkata";
    };

    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    homeConfigurations = [
      home-manager.nixosModules.home-manager {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.${Var.username} = import ./home.nix;
          extraSpecialArgs = { inherit inputs Var; };
        };
      }
    ];

  in 
  
  {  
    nixosConfigurations = {
      Laptop = lib.nixosSystem {
	      specialArgs = { inherit inputs system Var; };
        modules = homeConfigurations ++ [ ./iTunes.nix ];
      };
    };
  };
}