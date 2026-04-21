{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfiguration."nixos" = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          cmake
          gnumake
          gcc
          pkg-config
          postgresql
          libpqxx
          nlohmann_json
          libjwt
          openssl

          vulkan-loader
          vulkan-headers
          vulkan-validation-layers

          wayland
          wayland-protocols
          wayland-scanner
          libxkbcommon
          libffi
          libGL

          libX11
          libXcursor
          libXrandr
          libXi
          libXinerama
        ];

        PKG_CONFIG_PATH = "${pkgs.libpqxx}/lib/pkgconfig:"
                        + "${pkgs.libjwt}/lib.pkgconfig:"
                        + "${pkgs.openssl.dev}/lib/pkgConfig:"
                        + "${pkgs.wayland}/lib/pkgConfig:"
                        + "${pkgs.libxkbcommon}/lib/pkgConfig";

        VK_LAYER_PATH = "${pkgs.vulkan-validation-layers}/share/vulkan/explicit-layer.d";

        LD_LIBRARY_PATH = "${pkgs.vulkan-loader}/lib:"
                        + "${pkgs.wayland}/lib:"
                        + "${pkgs.libxkbcommon}/lib:"
                        + "${pkgs.libGL}/lib";
      };
    };
}
