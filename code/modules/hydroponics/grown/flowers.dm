// Poppy
/obj/item/seeds/poppy
	name = "pack of poppy seeds"
	desc = "These seeds grow into poppies."
	icon_state = "seed-poppy"
	species = "poppy"
	plantname = "Poppy Plants"
	product = /obj/item/reagent_containers/food/snacks/grown/poppy
	endurance = 10
	maturation = 8
	yield = 6
	potency = 20
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	icon_grow = "poppy-grow"
	icon_dead = "poppy-dead"
	mutatelist = list(/obj/item/seeds/poppy/geranium, /obj/item/seeds/poppy/lily)
	reagents_add = list(/datum/reagent/medicine/bicaridine = 0.2, /datum/reagent/consumable/nutriment = 0.05)

/obj/item/reagent_containers/food/snacks/grown/poppy
	seed = /obj/item/seeds/poppy
	name = "poppy"
	desc = "Long-used as a symbol of rest, peace, and death."
	icon_state = "poppy"
	slot_flags = ITEM_SLOT_HEAD
	filling_color = "#FF6347"
	bitesize_mod = 3
	tastes = list("sesame seeds" = 1)
	foodtype = VEGETABLES | GROSS
	distill_reagent = /datum/reagent/consumable/ethanol/vermouth

// Lily
/obj/item/seeds/poppy/lily
	name = "pack of lily seeds"
	desc = "These seeds grow into lilies."
	icon_state = "seed-lily"
	species = "lily"
	plantname = "Lily Plants"
	product = /obj/item/reagent_containers/food/snacks/grown/poppy/lily
	mutatelist = list(/obj/item/seeds/bee_balm, /obj/item/seeds/poppy/lily/trumpet)

/obj/item/reagent_containers/food/snacks/grown/poppy/lily
	seed = /obj/item/seeds/poppy/lily
	name = "lily"
	desc = "A beautiful orange flower."
	icon_state = "lily"
	tastes = list("pelts " = 1)
	filling_color = "#FFA500"

//A actual lily trumpet is the "Brugmansia" or angel-trumpet lily which is more closely related to Datura, but also very toxic if not as delirium inducing.
//Source: Wikipedia

/obj/item/seeds/poppy/lily/trumpet
	name = "pack of spaceman's trumpet seeds"
	desc = "A plant sculped by extensive genetic engineering. The spaceman's trumpet is said to bear no resemblance to its wild ancestors. Inside NT AgriSci circles it is better known as NTPW-0372."
	icon_state = "seed-trumpet"
	species = "spacemanstrumpet"
	plantname = "Spaceman's Trumpet Plant"
	product = /obj/item/reagent_containers/food/snacks/grown/trumpet
	lifespan = 80
	production = 5
	endurance = 10
	maturation = 12
	yield = 4
	potency = 20
	growthstages = 4
	weed_rate = 2
	weed_chance = 10
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	icon_grow = "spacemanstrumpet-grow"
	icon_dead = "spacemanstrumpet-dead"
	mutatelist = list()
	genes = list(/datum/plant_gene/reagent/polypyr)
	reagents_add = list(/datum/reagent/consumable/nutriment = 0.05)
	rarity = 30

/obj/item/seeds/poppy/lily/trumpet/Initialize(mapload, nogenes = FALSE)
	. = ..()
	if(!nogenes)
		unset_mutability(/datum/plant_gene/reagent/polypyr, PLANT_GENE_EXTRACTABLE)

/obj/item/reagent_containers/food/snacks/grown/trumpet
	seed = /obj/item/seeds/poppy/lily/trumpet
	name = "spaceman's trumpet"
	desc = "A vivid flower that smells faintly of freshly cut grass. Touching the flower seems to stain the skin some time after contact, yet most other surfaces seem to be unaffected by this phenomenon."
	icon_state = "spacemanstrumpet"
	filling_color = "#FF6347"
	bitesize_mod = 3
	foodtype = VEGETABLES

// Geranium
/obj/item/seeds/poppy/geranium
	name = "pack of geranium seeds"
	desc = "These seeds grow into geranium."
	icon_state = "seed-geranium"
	species = "geranium"
	plantname = "Geranium Plants"
	product = /obj/item/reagent_containers/food/snacks/grown/poppy/geranium
	mutatelist = list()

/obj/item/reagent_containers/food/snacks/grown/poppy/geranium
	seed = /obj/item/seeds/poppy/geranium
	name = "geranium"
	desc = "A beautiful blue flower."
	icon_state = "geranium"
	filling_color = "#008B8B"
	tastes = list("pelts " = 1)

// Harebell
/obj/item/seeds/harebell
	name = "pack of harebell seeds"
	desc = "These seeds grow into pretty little flowers."
	icon_state = "seed-harebell"
	species = "harebell"
	plantname = "Harebells"
	product = /obj/item/reagent_containers/food/snacks/grown/harebell
	lifespan = 100
	endurance = 20
	maturation = 7
	production = 1
	yield = 2
	potency = 30
	growthstages = 4
	genes = list(/datum/plant_gene/trait/plant_type/weed_hardy)
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	reagents_add = list(/datum/reagent/consumable/nutriment = 0.04)

/obj/item/reagent_containers/food/snacks/grown/harebell
	seed = /obj/item/seeds/harebell
	name = "harebell"
	desc = "\"I'll sweeten thy sad grave: thou shalt not lack the flower that's like thy face, pale primrose, nor the azured hare-bell, like thy veins; no, nor the leaf of eglantine, whom not to slander, out-sweeten'd not thy breath.\""
	icon_state = "harebell"
	tastes = list("salt" = 1)
	slot_flags = ITEM_SLOT_HEAD
	filling_color = "#E6E6FA"
	bitesize_mod = 3
	distill_reagent = /datum/reagent/consumable/ethanol/vermouth

// Sunflower
/obj/item/seeds/sunflower
	name = "pack of sunflower seeds"
	desc = "These seeds grow into sunflowers.<br><b>they appear to be edible once cooked!</b>"
	icon_state = "seed-sunflower"
	species = "sunflower"
	plantname = "Sunflowers"
	product = /obj/item/grown/sunflower
	endurance = 20
	production = 2
	yield = 2
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	icon_grow = "sunflower-grow"
	icon_dead = "sunflower-dead"
	mutatelist = list(/obj/item/seeds/sunflower/moonflower, /obj/item/seeds/sunflower/novaflower)
	reagents_add = list(/datum/reagent/consumable/cooking_oil = 0.08, /datum/reagent/consumable/nutriment = 0.04)

/obj/item/seeds/sunflower/microwave_act(obj/machinery/microwave/MW) //The act allows it to be cooked over a bonfire grille too.
	..()
	new /obj/item/reagent_containers/food/snacks/roastseeds/sunflower(drop_location())
	qdel(src)

/obj/item/reagent_containers/food/snacks/roastseeds/sunflower //Inherits from pumpkin.dm's roast seeds, similarity commented out for clarity
	name = "roasted sunflower seeds"
	desc = "Nutty tasting black sunflower seeds, roasted to bring out the flavor."
	icon_state = "roasted_sunflower_seeds"
	list_reagents = list(/datum/reagent/consumable/cooking_oil = 2 , /datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 1.5)
	//bitesize = 2
	//w_class = WEIGHT_CLASS_TINY
	tastes = list("nutty" = 1)
	//foodtype = GRAIN

/obj/item/grown/sunflower // FLOWER POWER!
	seed = /obj/item/seeds/sunflower
	name = "sunflower"
	desc = "It's beautiful! A certain person might beat you to death if you trample these."
	icon_state = "sunflower"
	lefthand_file = 'icons/mob/inhands/weapons/plants_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/plants_righthand.dmi'
	damtype = "fire"
	force = 0
	slot_flags = ITEM_SLOT_HEAD
	throwforce = 0
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 1
	throw_range = 3
	tastes = list("seeds" = 1)

/obj/item/grown/sunflower/attack(mob/M, mob/user)
	to_chat(M, "<font color='green'><b> [user] smacks you with a sunflower!</font><font color='yellow'><b>FLOWER POWER<b></font>")
	to_chat(user, "<font color='green'>Your sunflower's </font><font color='yellow'><b>FLOWER POWER</b></font><font color='green'>strikes [M]</font>")

// Moonflower
/obj/item/seeds/sunflower/moonflower
	name = "pack of moonflower seeds"
	desc = "These seeds grow into moonflowers."
	icon_state = "seed-moonflower"
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	species = "moonflower"
	plantname = "Moonflowers"
	icon_grow = "moonflower-grow"
	icon_dead = "sunflower-dead"
	product = /obj/item/reagent_containers/food/snacks/grown/moonflower
	genes = list(/datum/plant_gene/trait/glow/purple)
	mutatelist = list()
	reagents_add = list(/datum/reagent/consumable/ethanol/moonshine = 0.2, /datum/reagent/consumable/nutriment/vitamin = 0.02, /datum/reagent/consumable/nutriment = 0.02)
	rarity = 15

/obj/item/reagent_containers/food/snacks/grown/moonflower
	seed = /obj/item/seeds/sunflower/moonflower
	name = "moonflower"
	desc = "Store in a location at least 50 yards away from werewolves."
	icon_state = "moonflower"
	slot_flags = ITEM_SLOT_HEAD
	filling_color = "#E6E6FA"
	bitesize_mod = 2
	distill_reagent = /datum/reagent/consumable/ethanol/absinthe //It's made from flowers.
	tastes = list("glowbugs" = 1)

// Novaflower
/obj/item/seeds/sunflower/novaflower
	name = "pack of novaflower seeds"
	desc = "These seeds grow into novaflowers."
	icon_state = "seed-novaflower"
	species = "novaflower"
	plantname = "Novaflowers"
	icon_grow = "novaflower-grow"
	icon_dead = "sunflower-dead"
	product = /obj/item/grown/novaflower
	mutatelist = list()
	reagents_add = list(/datum/reagent/consumable/condensedcapsaicin = 0.25, /datum/reagent/consumable/capsaicin = 0.3, /datum/reagent/consumable/nutriment = 0)
	rarity = 20

/obj/item/grown/novaflower
	seed = /obj/item/seeds/sunflower/novaflower
	name = "novaflower"
	desc = "These beautiful flowers have a crisp smokey scent, like a summer bonfire."
	icon_state = "novaflower"
	lefthand_file = 'icons/mob/inhands/weapons/plants_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/plants_righthand.dmi'
	damtype = "fire"
	force = 0
	slot_flags = ITEM_SLOT_HEAD
	throwforce = 0
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 1
	throw_range = 3
	attack_verb = list("roasted", "scorched", "burned")
	grind_results = list(/datum/reagent/consumable/capsaicin = 0, /datum/reagent/consumable/condensedcapsaicin = 0)
	tastes = list("cooked sunflower" = 1)

/obj/item/grown/novaflower/add_juice()
	..()
	force = round((5 + seed.potency / 5), 1)

/obj/item/grown/novaflower/attack(mob/living/carbon/M, mob/user)
	if(!..())
		return
	if(isliving(M))
		to_chat(M, "<span class='danger'>You are lit on fire from the intense heat of the [name]!</span>")
		M.adjust_fire_stacks(seed.potency / 20)
		if(M.IgniteMob())
			message_admins("[ADMIN_LOOKUPFLW(user)] set [ADMIN_LOOKUPFLW(M)] on fire with [src] at [AREACOORD(user)]")
			log_game("[key_name(user)] set [key_name(M)] on fire with [src] at [AREACOORD(user)]")

/obj/item/grown/novaflower/afterattack(atom/A as mob|obj, mob/user,proximity)
	. = ..()
	if(!proximity)
		return
	if(force > 0)
		force -= rand(1, (force / 3) + 1)
	else
		to_chat(usr, "<span class='warning'>All the petals have fallen off the [name] from violent whacking!</span>")
		qdel(src)

/obj/item/grown/novaflower/pickup(mob/living/carbon/human/user)
	..()
	if(!user.gloves)
		to_chat(user, "<span class='danger'>The [name] burns your bare hand!</span>")
		user.adjustFireLoss(rand(1, 5))

// Beebalm
/obj/item/seeds/bee_balm
	name = "pack of Bee Balm seeds"
	desc = "These seeds grow into Bee Balms."
	icon_state = "seed-bee_balm"
	species = "bee_balm"
	plantname = "Bee Balm Buds"
	product = /obj/item/reagent_containers/food/snacks/grown/bee_balm
	endurance = 10
	maturation = 8
	yield = 3
	potency = 30
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	icon_grow = "bee_balm-grow"
	icon_dead = "bee_balm-dead"
	mutatelist = list(/obj/item/seeds/poppy/geranium, /obj/item/seeds/bee_balm/honey_balm) //Lower odds of becoming honey
	reagents_add = list(/datum/reagent/medicine/spaceacillin = 0.1, /datum/reagent/abraxo_cleaner/sterilizine = 0.05)

/obj/item/reagent_containers/food/snacks/grown/bee_balm
	seed = /obj/item/seeds/bee_balm
	name = "bee balm"
	desc = "A flower used for medical antiseptic in history."
	icon_state = "bee_balm"
	filling_color = "#FF6347"
	bitesize_mod = 8
	tastes = list("strong antiseptic " = 1)
	foodtype = GROSS

// Beebalm
/obj/item/seeds/bee_balm/honey_balm
	name = "pack of Honey Balm seeds"
	desc = "These seeds grow into Honey Balms."
	icon_state = "seed-honey_balm"
	species = "honey_balm"
	plantname = "Honey Balm Pods"
	product = /obj/item/reagent_containers/food/snacks/grown/bee_balm/honey
	endurance = 1
	maturation = 10
	yield = 1
	potency = 1
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_flowers.dmi'
	icon_grow = "honey_balm-grow"
	icon_dead = "honey_balm-dead"
	reagents_add = list(/datum/reagent/consumable/honey = 0.1, /datum/reagent/lye = 0.3) //To make wax
	rarity = 30

/obj/item/reagent_containers/food/snacks/grown/bee_balm/honey
	seed = /obj/item/seeds/bee_balm/honey_balm
	name = "honey balm"
	desc = "A large honey filled pod of a flower."
	icon_state = "honey_balm"
	filling_color = "#FF6347"
	bitesize_mod = 8
	tastes = list("wax" = 1)
	foodtype = SUGAR
	distill_reagent = /datum/reagent/consumable/ethanol/mead
