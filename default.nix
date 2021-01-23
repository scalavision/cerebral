with import <nixpkgs> { };

mkShell rec {

  name = "cerebral-tutorial";

  buildInputs = [
    bash
    gnumake
    yarn
    nodejs
    nodePackages.node-gyp
    libsass
    scala
    ammonite
    python
    sass
    # chromium
    # chromedriver
    # nodePackages.webpack
    # nodePackages.webpack-cli
  ];

  shellHook = ''
    echo "environtment loaded and ready .."

    # if [[ ! -d ./node_modules ]]; then
    #   yarn install --frozen-lockfile --non-interactive && yarn cache clean
    # fi

    # export DEVELOP="true"
    # echo "starting yarn"
    # # yarn dev    
    # webpack --mode development --watch --hide-modules        
    ! [[ -z $SNOWPACK ]] && npx snowpack dev || echo "IDE env"
  '';

}

