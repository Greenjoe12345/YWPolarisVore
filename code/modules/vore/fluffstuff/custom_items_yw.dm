// **************
// Unleashed_Mana
// **************
/obj/item/weapon/fluff/zekewatch
	name = "Zeke's pocketwatch"
	desc = "Looks like it's broken... or is it?"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "zekewatch"

/obj/item/weapon/fluff/zekewatch/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		var/time1 = rand(0,11)
		var/time2 = rand(0,59)

		if(time1 < 10)
			time1 = "0[time1]"
		if(time2 < 10)
			time2 = "0[time2]"

		user.visible_message("<span class='rose'>[src] displays [time1]:[time2]</span>")
	else
		return ..()
	return

/obj/item/weapon/kitchenknife/tacknife/unathiknife/fluff/eravik_vessi_1
	name = "Noctis"
	desc = "A strange blade made of some kind of black metal. It feels... incomplete."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "eravikblade"

/obj/item/weapon/reagent_containers/food/drinks/flask/fluff/david_3
	name = "David's lucky bottle"
	desc = "As long as there is something in it, nothing can go wrong."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "davidbottle"

/obj/item/weapon/material/kitchen/utensil/fork/fluff/ragna_1
	name = "Ragna's fork"
	desc = "\"FEAR RAGNA!\""
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "ragnafork"
	icon_override = 'icons/vore/custom_items_yw.dmi'
	item_state_slots = list(slot_r_hand_str = "ragnafork_r", slot_l_hand_str = "ragnafork_l")

// *********
// Capt_matt
// *********
//Payton Joghs
/obj/item/weapon/material/hatchet/unathiknife/fluff/payton_joghs_1
	name = "Payton's Knife"
	desc = "It appears to be a traditional unathi knife, though with 'Payton' written on the side and appearing to be made of steel."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "paytonknife"

// **************
// BlackAngelsAce
// **************
/obj/item/weapon/oldtwohanded/spear/fluff/madoka_koto_1
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_override = 'icons/vore/custom_items_yw.dmi'
	icon_state = "madokaspear0"
	base_icon = "madokaspear"

	item_state_slots = list(slot_back_str = "madokaspear0_mob")

	name = "Madoka's spear"
	desc = "A 10 foot long spear, with a sturdy wooden shaft to which is attached a strange, double spiked steel blade. One is slightly larger than the other."
	force = 14
	w_class = 5.0
	slot_flags = SLOT_BACK
	force_wielded = 22 // Was 13, Buffed - RR
	throwforce = 20
	throw_speed = 3
	edge = 0
	sharp = 1
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("stabbed", "pierced", "jabbed", "torn", "gored")

/obj/item/toy/bosunwhistle/fluff/strix
	name = "Authentic Bosun's Whistle"
	desc = "A authentic boatswain's call that appears to be silver plated! The noise it makes is ungodly loud and high pitched.. Why would a person with four extra-sensitive ears ever own such a thing!?"
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "strixwhistle"
	w_class = ITEMSIZE_TINY
	slot_flags = SLOT_EARS | SLOT_HOLSTER

/obj/item/toy/bosunwhistle/fluff/strix/attack_self(mob/user as mob)
	if(cooldown < world.time - 15)
		user << "<span class='notice'>You blow on [src], creating an ear-splitting noise!</span>"
		playsound(user, 'sound/misc/boatswain.ogg', 25, 1)
		cooldown = world.time

/obj/item/device/radio/headset/fluff/strix
	name = "Strix\'s headset"
	desc = "A headset that seems custom made for a avali skull shape, the sounds coming from it are very quiet."
	icon_state = "strix_headset"
	icon = 'icons/vore/custom_items_yw.dmi'
	item_state = "strix_headset"
	sprite_sheets = list(SPECIES_TESHARI = 'icons/vore/custom_onmob_yw.dmi')


// *************
// GeneralPantsu
// *************

//Amara Faell

/obj/item/weapon/flame/lighter/zippo/fluff/amara
	desc = "A zippo that comes in a metallic blood red case. How the flame can be lime green is an enigma in itself."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "bloodredzippo"

/obj/item/device/modkit_conversion/fluff/amara_hos_kit
	name = "Amara's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Head of security armored coat. It has a red wolf painted on it."
	owner_ckey = "generalpantsu"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/hoscoat
	to_suit = /obj/item/clothing/suit/storage/vest/hoscoat/amara_hos

//Nika Domashev

/obj/item/device/modkit_conversion/fluff/nika_sec_kit
	name = "Nika's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."
	owner_ckey = "generalpantsu"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/nika

// *******
// Gozulio
// *******

//Glitterpaws
/obj/item/weapon/melee/goz_whitecane
	name = "White Cane"
	desc = "A telescoping white cane. They are commonly used by the blind or visually impaired as a mobility tool or as a courtesy to others."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "goz_whitecane_0"
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
	)
	slot_flags = SLOT_BELT
	w_class = ITEMSIZE_SMALL
	force = 3
	var/on = 0

/obj/item/weapon/melee/goz_whitecane/attack_self(mob/user as mob)
	on = !on
	if(on)
		user.visible_message("<span class='notice'>\The [user] extends the white cane.</span>",\
		"<span class='warning'>You extend the white cane.</span>",\
		"You hear an ominous click.")
		icon_state = "goz_whitecane_1"
		item_state_slots = list(slot_r_hand_str = "goz_whitecane", slot_l_hand_str = "goz_whitecane")
		w_class = ITEMSIZE_NORMAL
		force = 5
		attack_verb = list("smacked", "struck", "craked", "beaten")
	else
		user.visible_message("<span class='notice'>\The [user] collapses the white cane.</span>",\
		"<span class='notice'>You collapse the white cane.</span>",\
		"You hear a click.")
		icon_state = "goz_whitecane_0"
		item_state_slots = list(slot_r_hand_str = null, slot_l_hand_str = null)
		w_class = ITEMSIZE_SMALL
		force = 3
		attack_verb = list("hit", "poked")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)
	add_fingerprint(user)

	return

/obj/item/weapon/melee/goz_whitecane/attack(mob/M as mob, mob/user as mob)
	if(user.a_intent == I_HELP)
		user.visible_message("<span class='notice'>\The [user] has lightly tapped [M] on the ankle with their white cane!</span>")
		return
	else
		..()

// *******
// Dawidoe
// *******
/obj/item/weapon/flame/lighter/zippo/fluff/melissa
	name = "Zippo"
	desc = "A custom made zippo lighter with word 'Mel' engraved in white font on the bottom right corner. It's black, with red lines around the edges."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "melzippo"

/obj/item/device/modkit_conversion/fluff/melissa_gun_kit
	name = "Melissa's modkit"
	desc = "A kit containing all the needed tools and parts to modify a 45 Pistol."
	owner_ckey = "dawidoe"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/weapon/gun/projectile/sec/flash
	to_suit = /obj/item/weapon/gun/projectile/fluff/m1911

// ************
// championfire
// ************

//Yuki Windroar

/obj/item/weapon/implanter/reagent_generator/roiz/yuki
	implant_type = /obj/item/weapon/implant/reagent_generator/roiz/yuki

/obj/item/weapon/implant/reagent_generator/roiz/yuki
	name = "egg laying implant"
	desc = "This is an implant that allows the user to lay eggs."
	usable_volume = 500
	transfer_amount = 50

	empty_message = list("Your lower belly feels smooth and empty. Sorry, we're out of eggs!", "The reduced pressure in your lower belly tells you there are no more eggs.")
	full_message = list("Your lower belly looks swollen with irregular bumps, and it feels heavy.", "Your lower abdomen feels really heavy, making it a bit hard to walk.")
	emote_descriptor = list("an egg right out of Yuki's lower belly!", "into Yuki's belly firmly, forcing him to lay an egg!", "Yuki really tight, who promptly lays an egg!")

// ********
// Vitorhks
// ********

//Jessica Mayer

/obj/item/device/modkit_conversion/fluff/jessica_sec_kit
	name = "Jessica's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Officer Armor Vest."
	owner_ckey = "vitorhks"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/vest/officer
	to_suit = /obj/item/clothing/suit/storage/vest/officer/fluff/jessica

// *******
// ConZon4
// *******

//Dillan McGraw

//	/obj/item/weapon/storage/fluff/cane/dillan
//	var/max_w_class = 1
//	var/max_storage_space = 4
//	throwforce = 7
//	force = 5
//	name = "Polished Cane"
//	desc = "A wooden cane, polished to a fine gleam. It appears weathered and worn down from extended use. On the handle, the name 'Dillan' can be read."
//	icon = 'icons/vore/custom_items_yw.dmi'
//	icon_state = "fancycane"
//	item_icons = list(
//		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
//		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
//		)
//
// ********
// lukevale
// ********

// This implant gives me cancer -Izac

//Mira Rezus

/obj/item/weapon/implant/reagent_generator/tempest/mira
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Mira's nipples, milking them", "milks Mira's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Mira's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/mira
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/mira

//Natalya Vospit

/obj/item/weapon/implant/reagent_generator/tempest/natalya
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Natalya's nipples, milking them", "milks Natalya's breasts", "extracts milk")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Natalya's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

/obj/item/weapon/implanter/reagent_generator/natalya
	implant_type = /obj/item/weapon/implant/reagent_generator/tempest/natalya

//Eryn Wolfe

/obj/item/weapon/fluff/chemset
	name = "Eryn's chemistry set"
	desc = "A small box with a open compartment, some buttons, a disk drive, and flashing lights. On the back is a small metal plaque with the name 'Eryn Wofle' on it."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "chemset"

//Mitsuko Jiao

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/a
	name = "Mitsuko's modkit Mk1"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."
	owner_ckey = "lukevale"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer
	to_suit = /obj/item/device/healthanalyzer/fluff/jiao_health

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/b
	name = "Mitsuko's modkit Mk2"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."
	owner_ckey = "lukevale"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer/improved
	to_suit = /obj/item/device/healthanalyzer/improved/fluff/jiao_health

/obj/item/device/modkit_conversion/fluff/jiao_anynlizer_kit/c
	name = "Mitsuko's modkit Mk3"
	desc = "A kit containing all the needed tools and parts to modify a heath analyzer. It has a Emblem painted on it."
	owner_ckey = "lukevale"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/device/healthanalyzer/advanced
	to_suit = /obj/item/device/healthanalyzer/advanced/fluff/jiao_health

/obj/item/device/healthanalyzer/fluff/jiao_health
	name = "Kanghu medical scanner MK1"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is a basic unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk1"

/obj/item/device/healthanalyzer/improved/fluff/jiao_health
	name = "Kanghu medical scanner MK2"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is an improved unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk2"

/obj/item/device/healthanalyzer/advanced/fluff/jiao_health
	name = "Kanghu medical scanner MK3"
	desc = "A Modified medical scanner, all the main components are compacted into the handle. This one is an advanced unit."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "scanner_mk3"

// **************
// VanesaFancyFin
// **************

//Ire

/obj/item/weapon/bikehorn/fluff/chew_ire
	name = "Chew toy"
	desc = "A toy normally used by dogs to play with or chew on"
	slot_flags = SLOT_MASK
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "chew"
	item_state = "chew"
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
		)

// **************
// Belsima
// **************

//I'm going to fix this code later.

/obj/item/weapon/implant/reagent_generator/belle/ysaline
	name = "lactation implant"
	desc = "This is an implant that allows the user to lactate."
	usable_volume = 1000

	empty_message = list("Your breasts feel unusually empty.", "Your chest feels lighter - your milk supply is empty!", "Your milk reserves have run dry.", "Your grateful nipples ache as the last of your milk leaves them.")
	full_message = list("Your breasts ache badly - they are swollen and feel fit to burst!", "You need to be milked! Your breasts feel bloated, eager for release.", "Your milky breasts are starting to leak...")
	emote_descriptor = list("squeezes Ysaline's nipples, milking them", "milks Ysaline's breasts", "tugs at Ysaline's breasts")
	self_emote_descriptor = list("squeeze out", "extract")
	random_emote = list("supresses a moan", "gasps sharply", "bites her lower lip")
	verb_name = "Milk"
	verb_desc = "Grab Ysaline's breasts and milk her, storing her fresh, warm milk in a container. This will undoubtedly turn her on."

// **************
// Trash
// **************
/obj/item/weapon/fluff/fidgetspinner
	name = "Fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinner"
	var/basestate = "fidgetspinner"

/obj/item/weapon/fluff/fidgetspinner/red
	name = "Red fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years. This one is red"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinnerr"
	basestate = "fidgetspinnerr"

/obj/item/weapon/fluff/fidgetspinner/yellow
	name = "Yellow fidget spinner"
	desc = "A spinning stress relief toy, upsetting family, friends, and employers for 500 years. This one is yellow"
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "fidgetspinnery"
	basestate = "fidgetspinnery"

/obj/item/weapon/fluff/fidgetspinner/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(icon_state != "[basestate]-s")
			icon_state = "[basestate]-s"
			user.visible_message("<span class='rose'>[user] spins the [src]!</span>")
			spawn(100)
				icon_state = "[basestate]"
	else
		return ..()
	return

/obj/item/weapon/fluff/squeezetoy
	name = "Stress relief squeeze toy"
	desc = "A toy squeezed to relieve stress, it’s squeaker appears to be broken from over use."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "squeezetoy"

/obj/item/weapon/fluff/squeezetoy/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(icon_state != "squeezetoy-s")
			icon_state = "squeezetoy-s"
			user.visible_message("<span class='rose'>[user] squeezes the [src] a few times!</span>")
			spawn(50)
				icon_state = "squeezetoy"
	else
		return ..()
	return

/obj/item/weapon/fluff/dimensioncube
	var/folded = 1
	name = "Infinity cube"
	desc = "All the fun of a puzzle cube without any of the challenge, a good way to relieve stress and delude yourself into a sense of accomplishment."
	w_class = 1.0
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "infinitycube0"

/obj/item/weapon/fluff/dimensioncube/attack_self(mob/living/user)
	if(user.r_hand == src || user.l_hand == src)
		if(folded == 0)
			icon_state = "infinitycube0"
			user.visible_message("<span class='rose'>[user] folds the [src]!</span>")
			folded = 1
		else if(folded == 1)
			icon_state = "infinitycube1"
			user.visible_message("<span class='rose'>[user] unfolds the [src]!</span>")
			folded = 0
	else
		return ..()
	return

// **************
// SASOperative
// **************

// These seem to have been deprecated from loadouts? -KK
/obj/item/device/modkit_conversion/fluff/skinner/a
	name = "Joseph's modkit Mk1"
	desc = "A kit containing all the needed tools and parts to modify a security jumpsuit."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/under/rank/security
	to_suit = /obj/item/clothing/under/rank/security/fluff/skinner

/obj/item/device/modkit_conversion/fluff/skinner/b
	name = "Joseph's modkit Mk2"
	desc = "A kit containing all the needed tools and parts to modify a security armor."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/armor/vest
	to_suit = /obj/item/clothing/suit/armor/vest/fluff/skinner

/obj/item/device/modkit_conversion/fluff/skinner/c
	name = "Joseph's modkit Mk3"
	desc = "A kit containing all the needed tools and parts to modify a security helmet."

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/head/helmet
	to_suit = /obj/item/clothing/head/helmet/fluff/skinner

// **************
// DeepIndigo
// **************

/obj/item/weapon/storage/bible/fluff/amina
	name = "New Space Pioneer's Bible"
	desc = "This one says it was printed in 2492. The name \"Eric Hayvers\" is written on the inside of the cover, crossed out. Under it is written \"Kouri, Amina, Marine Unit 14, Fifth Echelon. Service number NTN-5528928522372\""

// **************
// DameonOwen
// **************

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious
	name = "a mysterious cookie"
	desc = "DAS A BIG COOKIE!!!"
	bitesize = 100

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious/Initialize()
	. = ..()

/obj/item/weapon/reagent_containers/food/snacks/cookie/mysterious/attack(mob/living/M as mob, mob/user as mob, def_zone)
	. = ..()
	if (M == user)
		M.resize(3)
		M.drop_from_inventory(src)
		qdel(src)


// **************
// NESgamer190
// **************

//Lucy Price
/obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask/fluff/lucyprice
	name = "Cryostasis Thermos"
	desc = " A thermos that has been designed to look something akin to a mix between a cryostasis beaker and a thermos.  Does NOT keep the drinks cold, surprisingly enough."
	icon_state = "cryothermos"
	icon = 'icons/vore/custom_items_yw.dmi'

// **************
// Moca_The_Porg1
// **************

//Mocha
/obj/item/device/modkit_conversion/fluff/mocha_suit_kit
	name = "Mocha's modkit"
	desc = "A kit containing all the needed tools and parts to modify a Explorer Suit"
	owner_ckey = "mocatheporg1"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/clothing/suit/storage/hooded/explorer
	to_suit = /obj/item/clothing/suit/storage/hooded/fluff/mocha_suit

// *************
// Foxicide
// *************
/obj/item/weapon/material/knife/tacknife/survival/fluff/kaith
	name = "Trusty Survival Knife"
	desc = "An old looking knife with an outdated wooden handle. Still looks robust, though."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "kaithknife"
	named_from_material = 0

/obj/item/device/modkit_conversion/fluff/kaith_knife_kit
	name = "Kaith's modkit"
	desc = "A kit containing all the needed tools and parts to modify a survival knife"
	owner_ckey = "foxicide"

	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"

	from_suit = /obj/item/weapon/material/knife/tacknife/survival
	to_suit = /obj/item/weapon/material/knife/tacknife/survival/fluff/kaith

// *************
// Coda_Vanistok
// *************
/obj/item/weapon/implanter/fluff/coda
	imp = new /obj/item/weapon/implant/fluff/coda
	icon_state = "implanter1_1"

/obj/item/weapon/implanter/fluff/coda/remove_implant() //No way to remove this implant.
	to_chat(usr, "<span class='notice'>It seems \the [imp] can't be removed from \the [src].</span>")
	return

/obj/item/weapon/implanter/fluff/coda/attack()
	..()
	if(!imp) //After injection, the implanter poofs.
		to_chat(usr, "<span class='notice'>\The [src] disentegrates after you use it!</span>")
		qdel(src)

/obj/item/weapon/implant/fluff/coda
	name = "locked size-modification implant"
	desc = "This is an implant that allows the user to change their size. It appears to be locked to two settings."
	var/mob/living/implanted_in = null

/obj/item/weapon/implant/fluff/coda/post_implant(mob/source)
	..()
	var/mob/living/H = source
	H.verbs += /obj/item/weapon/implant/fluff/coda/proc/coda_implant_resize
	implanted_in = source
	START_PROCESSING(SSobj, src)

/obj/item/weapon/implant/fluff/coda/process()
	if(implanted_in && (src.imp_in != implanted_in)) //If the implant is removed.
		implanted_in.setBrainLoss(200)
		visible_message("<span class='notice'>\The [src] shorts and sparks during removal, frying itself!</span>")
		playsound(src.loc, "sparks", 50, 1)
		STOP_PROCESSING(SSobj, src)
		name = "melted implant"
		desc = "Charred circuit in melted plastic case. Wonder what that used to be..."
		icon_state = "implant_melted"
		malfunction = MALFUNCTION_PERMANENT

/obj/item/weapon/implant/fluff/coda/proc/coda_implant_resize(var/mob/living/carbon/human/H)
	set name = "Resize (Implant)"
	set desc = "Change your size between two different preset options."
	set category = "IC"

	if(H.stat == DEAD)
		return
	switch(alert(H, "What would you like your size to be changed to?", "Size modification implant", "Normal", "Cancel", "Large"))
		if("Normal")
			H.resize(1)
		if("Large")
			H.resize(1.22)

// *************
// Dopiotl
// *************
/obj/item/weapon/storage/secure/briefcase/fluff/jeans
	name = "Sweet Ebony"
	desc = "An ebony/wooden secure case lined with gold. It looks thick, heavy, expensive, and incredibly sturdy. The design is sleek and elegant, adorned in intricate markings on the side, with hand-crafted artwork of a constellation you can't quite seem to recollect. It is surprisingly cold to the touch."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "jeans_lockbox"
	item_state_slots = list(slot_r_hand_str = "jeans_lockbox", slot_l_hand_str = "jeans_lockbox")
	item_icons = list(
		slot_l_hand_str = 'icons/vore/custom_items_left_hand_yw.dmi',
		slot_r_hand_str = 'icons/vore/custom_items_right_hand_yw.dmi',
		)
	var/list/has_items = list(
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
		/obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        /obj/item/weapon/reagent_containers/food/snacks/chocolatebar,
        )

/obj/item/weapon/storage/secure/briefcase/fluff/jeans/New() //this is entierly nessicary to spawn stuff. "FUN" -luke
	storage_slots = has_items.len
	allowed = list()
	for(var/P in has_items)
		allowed += P
		new P(src)
	..()
	return


// *************
// Greenjoe
// *************

/obj/structure/bed/chair/wheelchair/fluff/motorized
	name = "small electric wheelchair"
	desc = "An electric wheelchair, too small for an adult human, it's controlled by a joystick on the armrest.."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "motorchair-rear"
	anchored = 0
	buckle_movable = 1

	driving = 0
	mob/living/pulling = null
	bloodiness

/obj/structure/bed/chair/wheelchair/fluff/motorized/update_icon()
	return

/obj/structure/bed/chair/wheelchair/fluff/motorized/set_dir()
	..()
	cut_overlays()
	var/image/O = image(icon = 'icons/vore/custom_items_yw.dmi', icon_state = "motorchair-fore", layer = FLY_LAYER, dir = src.dir)
	add_overlay(O)
	if(has_buckled_mobs())
		for(var/A in buckled_mobs)
			var/mob/living/L = A
			L.set_dir(dir)

/obj/structure/bed/chair/wheelchair/fluff/motorized/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(W.is_wrench() || W.is_wirecutter() || istype(W,/obj/item/stack))
		return
	..()

/obj/structure/bed/chair/wheelchair/fluff/motorized/relaymove(mob/user, direction)
	// Redundant check?
	if(user.stat || user.stunned || user.weakened || user.paralysis || user.lying || user.restrained())
		if(user==pulling)
			pulling = null
			user.pulledby = null
			to_chat(user, "<span class='warning'>You lost your grip!</span>")
		return
	if(has_buckled_mobs() && pulling && user in buckled_mobs)
		if(pulling.stat || pulling.stunned || pulling.weakened || pulling.paralysis || pulling.lying || pulling.restrained())
			pulling.pulledby = null
			pulling = null
	if(user.pulling && (user == pulling))
		pulling = null
		user.pulledby = null
		return
	if(propelled)
		return
	if(pulling && (get_dist(src, pulling) > 1))
		pulling = null
		user.pulledby = null
		if(user==pulling)
			return
	if(pulling && (get_dir(src.loc, pulling.loc) == direction))
		to_chat(user, "<span class='warning'>You cannot go there.</span>")
		return
	if(pulling && has_buckled_mobs() && (user in buckled_mobs))
		to_chat(user, "<span class='warning'>You cannot drive while being pushed.</span>")
		return

	// Let's roll
	driving = 1
	var/turf/T = null
	//--1---Move occupant---1--//
	if(has_buckled_mobs())
		for(var/A in buckled_mobs)
			var/mob/living/L = A
			L.buckled = null
			step(L, direction)
			L.buckled = src
	//--2----Move driver----2--//
	if(pulling)
		T = pulling.loc
		if(get_dist(src, pulling) >= 1)
			step(pulling, get_dir(pulling.loc, src.loc))
	//--3--Move wheelchair--3--//
	step(src, direction)
	if(has_buckled_mobs()) // Make sure it stays beneath the occupant
		var/mob/living/L = buckled_mobs[1]
		Move(L.loc)
	set_dir(direction)
	if(pulling) // Driver
		if(pulling.loc == src.loc) // We moved onto the wheelchair? Revert!
			pulling.forceMove(T)
		else
			spawn(0)
			if(get_dist(src, pulling) > 1) // We are too far away? Losing control.
				pulling = null
				user.pulledby = null
			pulling.set_dir(get_dir(pulling, src)) // When everything is right, face the wheelchair
	if(bloodiness)
		create_track()
	driving = 0

/obj/structure/bed/chair/wheelchair/fluff/motorized/Moved(atom/old_loc, direction, forced = FALSE)
	. = ..()

	cut_overlays()
	playsound(src, 'sound/effects/roll.ogg', 75, 1)
	if(has_buckled_mobs())
		for(var/A in buckled_mobs)
			var/mob/living/occupant = A
			if(!driving)
				occupant.buckled = null
				occupant.Move(src.loc)
				occupant.buckled = src
				if (occupant && (src.loc != occupant.loc))
					if (propelled)
						for (var/mob/O in src.loc)
							if (O != occupant)
								Bump(O)
					else
						unbuckle_mob()
				if (pulling && (get_dist(src, pulling) > 1))
					pulling.pulledby = null
					to_chat(pulling, "<span class='warning'>You lost your grip!</span>")
					pulling = null
			else
				if (occupant && (src.loc != occupant.loc))
					src.forceMove(occupant.loc) // Failsafe to make sure the wheelchair stays beneath the occupant after driving

/obj/structure/bed/chair/wheelchair/fluff/motorized/attack_hand(mob/living/user as mob)
	if (pulling)
		MouseDrop(usr)
	else
		if(has_buckled_mobs())
			for(var/A in buckled_mobs)
				user_unbuckle_mob(A, user)
	return


/obj/structure/bed/chair/wheelchair/fluff/motorized/create_track()
	var/obj/effect/decal/cleanable/blood/tracks/B = new(loc)
	var/newdir = get_dir(get_step(loc, dir), loc)
	if(newdir == dir)
		B.set_dir(newdir)
	else
		newdir = newdir | dir
		if(newdir == 3)
			newdir = 1
		else if(newdir == 12)
			newdir = 4
		B.set_dir(newdir)
	bloodiness--

/obj/structure/bed/chair/wheelchair/fluff/motorized/buckle_mob(mob/M as mob, mob/user as mob)
	if(M == pulling)
		pulling = null
		usr.pulledby = null
	..()

/obj/item/wheelchair/fluff/motorized
	name = "wheelchair"
	desc = "A folded wheelchair that can be carried around."
	icon = 'icons/vore/custom_items_yw.dmi'
	icon_state = "motorchair-packed"
	item_state = "wheelchair"
	w_class = ITEMSIZE_HUGE // Can't be put in backpacks. Oh well.

/obj/item/wheelchair/attack_self(mob/user)
		var/obj/structure/bed/chair/wheelchair/fluff/motorized/R = new /obj/structure/bed/chair/wheelchair/fluff/motorized(user.loc)
		R.add_fingerprint(user)
		R.name = src.name
		R.color = src.color
		qdel(src)

/obj/structure/bed/chair/wheelchair/fluff/motorized/MouseDrop(over_object, src_location, over_location)
	..()
	if((over_object == usr && (in_range(src, usr) || usr.contents.Find(src))))
		if(!ishuman(usr))	return
		if(has_buckled_mobs())	return 0
		visible_message("[usr] collapses \the [src.name].")
		var/obj/item/wheelchair/fluff/motorized/R = new/obj/item/wheelchair/fluff/motorized(get_turf(src))
		R.name = src.name
		R.color = src.color
		spawn(0)
			qdel(src)
		return
