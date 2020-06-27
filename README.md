# meta-edyev

This is a repo for an example layer meta-edyev for Yocto 

This layer includes a new machine configuration (imx8mmedyev)

This layer includes a recipe for devmem2 tool used for reading physical memory

This layers also includes patches for both kernel and bsp recipes (u-boot) and its appropriate .bbappends and patch files

Initially u-boot patch set fdt_file environment variable which translates in setting the name for the device tree that will be used when loading kernel, however now another patch was added which does the same but using another method along with new machine configuration

linux-imx patch adds the proper device tree

You can use this a starting point for your own layer, machine and modify recipes.

Please bear in mind that if you want to patch an existing recipe defined in another layer you only need to include a directory indicating the name of the recipe (i.e recipes-kernel, recipes-bsp) and follow the path convention for the specific recipe and of course add there the corresponding .bbappend and patch files

Example.

u-boot original recipe is definied in meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot and it recipe file is u-boot-imx_2019.04.bb so to patch in layer meta-edyev you need to add recipes-bsp/u-boot/ and there create u-boot-imx_2019.04.bbappend.

Although altogether with its enviroment this layer including new machine is fully functional, this repo is just meant for reference on how to include a new layer with a custom machine and new recipe and patching exisiting recipes.

