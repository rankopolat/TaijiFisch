
local rodsConst = {
    ["Flimsy Rod"] = {
        Price = 0;
        Description = "Quite the weak and unreliable rod. But, it can get the job done!";
        Luck = 0;
        LureSpeed = 100;
        Strength = 10.4;
        LineDistance = 19;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(154, 170, 190);
        BobberTop = Color3.fromRGB(134, 38, 38);
        BobberBottom = Color3.fromRGB(255, 255, 255);
        From = "Moosewood";
    };
    ["Precision Rod"] = {
        Price = 0;
        Description = "Counterpart to rapid rod, with much better resilience!";
        Luck = 150;
        LureSpeed = 80;
        Strength = 12000;
        LineDistance = 100;
        Resilience = 5;
        Control = 0;
        Color = Color3.fromRGB(154, 170, 190);
        BobberTop = Color3.fromRGB(134, 38, 38);
        BobberBottom = Color3.fromRGB(255, 255, 255);
    };
    ["Plastic Rod"] = {
        Price = 900;
        Description = "Made of ABS plastic; You can trust this rod will last you.";
        Luck = 15;
        LureSpeed = 90;
        Strength = 100;
        LineDistance = 15;
        Resilience = 10;
        Control = 0;
        Color = Color3.fromRGB(73, 240, 255);
        BobberTop = Color3.fromRGB(163, 60, 60);
        BobberBottom = Color3.fromRGB(255, 242, 93);
        From = "Moosewood";
    };
    ["Carbon Rod"] = {
        Price = 2000;
        Description = "Stiff, strong, and easier to handle than other rods out there, however it is slightly shorter.";
        Luck = 25;
        LureSpeed = 110;
        Strength = 600;
        LineDistance = 15;
        Resilience = 10;
        Control = 0.05;
        Color = Color3.fromRGB(155, 190, 255);
        BobberTop = Color3.fromRGB(69, 109, 117);
        BobberBottom = Color3.fromRGB(192, 233, 255);
        From = "Moosewood";
    };
    ["Long Rod"] = {
        Price = 4500;
        Description = "Not the strongest, but it’s sure the longest! Is this really needed?";
        Luck = 30;
        LureSpeed = 80;
        Strength = 250;
        LineDistance = 300;
        Resilience = 0;
        Control = -0.1;
        Color = Color3.fromRGB(220, 204, 167);
        BobberTop = Color3.fromRGB(134, 38, 38);
        BobberBottom = Color3.fromRGB(255, 255, 255);
    };
    ["Executive Rod"] = {
        Price = math.huge;
        Description = "Game development is truly difficult..";
        Luck = 0;
        LureSpeed = 1;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 0;
        Control = 0.4;
        Color = Color3.fromRGB(255, 42, 42);
        BobberTop = Color3.fromRGB(255, 0, 0);
        BobberBottom = Color3.fromRGB(39, 39, 39);
        Unregistered = true;
    };
    ["No-Life Rod"] = {
        Price = math.huge;
        Description = "Fisching 24/7/365. Are you okay?";
        Luck = 100;
        LureSpeed = 10;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 15;
        Control = 0.25;
        Color = Color3.fromRGB(255, 42, 42);
        BobberTop = Color3.fromRGB(255, 0, 0);
        BobberBottom = Color3.fromRGB(39, 39, 39);
        Unregistered = true;
        DEV = true;
    };
    ["Rod Of The Depths"] = {
        Passive = "ShadowEntity";
        Requiriments = {
            GatesOpened = {"TheDepthsGate", "TheDepthsMazeGate"};
        };
        Price = 750000;
        Description = "This Rod was crafted by the Legendary King of The Depths... Legends say, every once in a while the Spirit of the King visits you to hand you a gift from the deep waters!";
        Luck = 130;
        LureSpeed = 35;
        Strength = 30000;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(255, 66, 52);
        BobberTop = Color3.fromRGB(255, 79, 66);
        BobberBottom = Color3.fromRGB(106, 26, 20);
        From = "The Depths";
    };
    ["Evil Pitchfork of Doom Rod"] = {
        Price = math.huge;
        Description = "I'm a witch and I'm evil";
        Luck = 0;
        LureSpeed = 1;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 30;
        Control = 0.4;
        Color = Color3.fromRGB(189, 0, 0);
        BobberTop = Color3.fromRGB(167, 0, 0);
        BobberBottom = Color3.fromRGB(47, 0, 0);
        Unregistered = true;
        DEV = true;
    };
    ["Abyssal Spinecaster"] = {
        Price = math.huge;
        Description = "Transformed from the spine of an ancient, unnatural being. Brimming with an enigmatic aura, its glowing spikes attract the most elusive fishes. [For @nekoanims]";
        Luck = 150;
        LureSpeed = 35;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(88, 50, 170);
        BobberTop = Color3.fromRGB(215, 197, 154);
        BobberBottom = Color3.fromRGB(19, 11, 47);
        Unregistered = true;
        DEV = true;
    };
    ["Tetra Rod"] = {
        Price = math.huge;
        Description = "A rod that belongs to the hands of the Tetrapede. [For @voaj77]";
        Luck = 150;
        LureSpeed = 35;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(170, 31, 26);
        BobberTop = Color3.fromRGB(255, 205, 26);
        BobberBottom = Color3.fromRGB(86, 0, 0);
        Unregistered = true;
        DEV = true;
    };
    ["Pen Rod"] = {
        Price = math.huge;
        Description = "zoo wee mama! [For @ZooWeeMamaMoment]";
        Luck = 150;
        LureSpeed = 35;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(85, 85, 85);
        BobberTop = Color3.fromRGB(98, 98, 98);
        BobberBottom = Color3.fromRGB(17, 17, 17);
        Unregistered = true;
        DEV = true;
    };
    ["Sovereign Doombringer"] = {
        Price = math.huge;
        Description = "Obliterate fish with a huge hammer. [Developer-Exclusive]";
        Luck = 150;
        LureSpeed = 35;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(137, 198, 255);
        BobberTop = Color3.fromRGB(151, 184, 255);
        BobberBottom = Color3.fromRGB(32, 37, 47);
        Unregistered = true;
        DEV = true;
    };
    ["Katana Rod"] = {
        Price = math.huge;
        Description = "[For @ennnryu]";
        Luck = 150;
        LureSpeed = 35;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 10;
        Control = 0.15;
        Color = Color3.fromRGB(177, 177, 177);
        BobberTop = Color3.fromRGB(197, 197, 197);
        BobberBottom = Color3.fromRGB(48, 48, 48);
        Unregistered = true;
        DEV = true;
    };
    ["Training Rod"] = {
        Price = 300;
        Description = "Handy fishing rod for honing your fishing skills. Remember, stay calm.";
        Luck = -70;
        LureSpeed = 90;
        Strength = 9;
        LineDistance = 20;
        Resilience = 20;
        Control = 0.2;
        Color = Color3.fromRGB(100, 198, 207);
        BobberTop = Color3.fromRGB(115, 199, 255);
        BobberBottom = Color3.fromRGB(50, 50, 50);
    };
    ["Fast Rod"] = {
        Price = 4500;
        Description = "Quick rod that seems to catch fish in a fly! You can tell it's fast from the racing stripes.";
        Luck = -15;
        LureSpeed = 55;
        Strength = 175;
        LineDistance = 20;
        Resilience = -12;
        Control = 0.05;
        Color = Color3.fromRGB(255, 101, 101);
        BobberTop = Color3.fromRGB(255, 103, 103);
        BobberBottom = Color3.fromRGB(255, 105, 105);
        From = "Moosewood";
    };
    ["Lucky Rod"] = {
        Price = 5250;
        Description = "Seems to attract a handful of rare fish. Not sure why?.. Maybe I should buy a lottery ticket?";
        Luck = 60;
        LureSpeed = 130;
        Strength = 175;
        LineDistance = 20;
        Resilience = -12;
        Control = 0.05;
        Color = Color3.fromRGB(188, 255, 190);
        BobberTop = Color3.fromRGB(80, 134, 80);
        BobberBottom = Color3.fromRGB(255, 255, 255);
        From = "Moosewood";
    };
    ["Steady Rod"] = {
        Price = 7000;
        Description = "Insanely stiff and strong. Can withstand immense pressure and tension.- Increases shake UI size.";
        Luck = 35;
        LureSpeed = 160;
        Strength = 100000;
        LineDistance = 25;
        Resilience = 30;
        Control = 0.05;
        Color = Color3.fromRGB(255, 190, 160);
        BobberTop = Color3.fromRGB(85, 85, 85);
        BobberBottom = Color3.fromRGB(95, 95, 95);
        From = "Roslit";
    };
    ["Fortune Rod"] = {
        Price = 12750;
        Description = "Extremely lucky rod with an odd tendency to attract significantly rarer fish than usual.";
        Luck = 110;
        LureSpeed = 135;
        Strength = 700;
        LineDistance = 20;
        Resilience = -15;
        Control = 0;
        Color = Color3.fromRGB(109, 77, 212);
        BobberTop = Color3.fromRGB(83, 56, 120);
        BobberBottom = Color3.fromRGB(255, 233, 111);
        From = "Roslit";
    };
    ["Magma Rod"] = {
        Price = math.huge;
        Description = "Hot to the touch. Engulfed with constantly burning passion to fish. [Capable of fishing in lava]";
        Luck = 15;
        LureSpeed = 170;
        Strength = 1200;
        LineDistance = 32;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(255, 122, 55);
        BobberTop = Color3.fromRGB(74, 41, 41);
        BobberBottom = Color3.fromRGB(33, 33, 33);
    };
    ["Reinforced Rod"] = {
        Price = 20000;
        Description = "Crafted by a metal stronger than diamond, making it capable of fishing in any harmful liquid.";
        Luck = 25;
        LureSpeed = 100;
        Strength = math.huge;
        LineDistance = 32;
        Resilience = 0;
        Control = 0.05;
        Color = Color3.fromRGB(255, 178, 89);
        BobberTop = Color3.fromRGB(244, 152, 86);
        BobberBottom = Color3.fromRGB(39, 31, 25);
    };
    ["Stone Rod"] = {
        Price = 3000;
        Description = "A rock-hard rod made purely from stone, which also makes it quite heavy.";
        Luck = 10;
        LureSpeed = 125;
        Strength = 900;
        LineDistance = 24;
        Resilience = 5;
        Control = 0;
        Color = Color3.fromRGB(110, 110, 120);
        BobberTop = Color3.fromRGB(85, 85, 93);
        BobberBottom = Color3.fromRGB(32, 32, 35);
        From = "Ancient Isle";
    };
    ["Phoenix Rod"] = {
        Price = 40000;
        Description = "Embued with the spirit of the graceful Phoenix. All fish have a 40% chance to be set ablaze.";
        Luck = 30;
        LureSpeed = 45;
        Strength = 2800;
        LineDistance = 20;
        Resilience = -10;
        Control = 0.02;
        Color = Color3.fromRGB(255, 98, 87);
        BobberTop = Color3.fromRGB(234, 78, 255);
        BobberBottom = Color3.fromRGB(255, 116, 51);
        From = "Ancient Isle";
    };
    ["Midas Rod"] = {
        Price = 55000;
        Description = "Blessed with the power of Midas. All fish have a 60% chance to be golden.";
        Luck = 10;
        LureSpeed = 40;
        Strength = 4000;
        LineDistance = 15;
        Resilience = -20;
        Control = 0;
        Color = Color3.fromRGB(255, 226, 83);
        BobberTop = Color3.fromRGB(255, 184, 62);
        BobberBottom = Color3.fromRGB(255, 171, 53);
        From = "The Travelling Merchant";
    };
    ["Trident Rod"] = {
        Price = 150000;
        Description = "Was originally the King of the Sea's way of defending his kingdom. All fish have a 30% chance to be atlantean. [Has a chance to stab a fish while catching it, briefly stunning it and increasing progress]";
        Luck = 150;
        LureSpeed = 80;
        Strength = 6000;
        LineDistance = 100;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(255, 191, 80);
        BobberTop = Color3.fromRGB(255, 178, 53);
        BobberBottom = Color3.fromRGB(255, 152, 48);
    };
    ["Mythical Rod"] = {
        Price = 110000;
        Description = "Blessed with the power of The Keepers. All fish have a 30% chance to be rainbow.";
        Luck = 45;
        LureSpeed = 100;
        Strength = 2000;
        LineDistance = 20;
        Resilience = 0;
        Control = 0.05;
        Color = Color3.fromRGB(255, 49, 159);
        BobberTop = Color3.fromRGB(255, 103, 156);
        BobberBottom = Color3.fromRGB(255, 255, 255);
        From = "The Travelling Merchant";
    };
    ["Rapid Rod"] = {
        Price = 14000;
        Description = "Extremely fast rod that catches fish at record speeds! -It even has racing wings!";
        Luck = -20;
        LureSpeed = 28;
        Strength = 700;
        LineDistance = 21;
        Resilience = -20;
        Control = 0;
        Color = Color3.fromRGB(255, 163, 87);
        BobberTop = Color3.fromRGB(255, 161, 94);
        BobberBottom = Color3.fromRGB(255, 255, 255);
        From = "Roslit";
    };
    ["Magnet Rod"] = {
        Price = 15000;
        Description = "This rod has an advanced magnetic field, allowing it to quickly attract crates and loot.";
        Luck = 0;
        LureSpeed = 110;
        Strength = 10000;
        LineDistance = 21;
        Resilience = 0;
        Control = 0.05;
        Color = Color3.fromRGB(0, 34, 255);
        BobberTop = Color3.fromRGB(255, 0, 0);
        BobberBottom = Color3.fromRGB(0, 17, 255);
        From = "Terrapin";
    };
    ["Nocturnal Rod"] = {
        Price = 11000;
        Description = "Seems to wake up fish just by throwing the bobber in!-- Can catch nocturnal and diurnal fish at any time!";
        Luck = 70;
        LureSpeed = 110;
        Strength = 2000;
        LineDistance = 15;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(72, 59, 143);
        BobberTop = Color3.fromRGB(43, 41, 75);
        BobberBottom = Color3.fromRGB(255, 255, 255);
    };
    ["Fungal Rod"] = {
        Price = math.huge;
        Description = "70% chance for the rod to sprout suspicious spores, giving you Luck IV for 45 seconds! Prettyy funky!";
        Luck = 45;
        LureSpeed = 110;
        Strength = 200;
        LineDistance = 15;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(78, 255, 78);
        BobberTop = Color3.fromRGB(51, 74, 45);
        BobberBottom = Color3.fromRGB(87, 109, 79);
    };
    ["Destiny Rod"] = {
        Price = 190000;
        Description = "The Destiny Rod pulses continuously with the pure essence of luck. (5% Higher chance of Shiny & Sparkling fish)";
        Luck = 250;
        LureSpeed = 110;
        Strength = 2000;
        LineDistance = 25;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(255, 254, 220);
        BobberTop = Color3.fromRGB(248, 248, 248);
        BobberBottom = Color3.fromRGB(0, 0, 0);
        From = "Caleia";
    };
    ["Haunted Rod"] = {
        Price = math.huge;
        Description = "Only obtainable during FischFright; The rod is cursed the constant energy of FischFright, allowing it to catch FischFright mutations all year around.";
        Luck = 50;
        LureSpeed = 100;
        Strength = 1000;
        LineDistance = 30;
        Resilience = 0;
        Control = 0.05;
        Color = Color3.fromRGB(94, 255, 105);
        BobberTop = Color3.fromRGB(94, 255, 105);
        BobberBottom = Color3.fromRGB(18, 18, 18);
    };
    ["Kings Rod"] = {
        Price = 120000;
        Description = "All fish caught are 15% bigger.";
        Luck = 55;
        LureSpeed = 145;
        Strength = math.huge;
        LineDistance = 13;
        Resilience = 35;
        Control = 0.15;
        Color = Color3.fromRGB(52, 96, 255);
        BobberTop = Color3.fromRGB(33, 111, 255);
        BobberBottom = Color3.fromRGB(35, 35, 35);
        From = "Keepers Altar";
    };
    ["Aurora Rod"] = {
        Price = 90000;
        Description = "Enhanced by the Aurora Borealis' energy. All fish have a 15% chance to have the Aurora mutation. Chances increase during the Aurora Borealis.";
        Luck = 60;
        LureSpeed = 90;
        Strength = 6000;
        LineDistance = 20;
        Resilience = 6;
        Control = 0.06;
        Color = Color3.fromRGB(46, 255, 185);
        BobberTop = Color3.fromRGB(49, 255, 179);
        BobberBottom = Color3.fromRGB(107, 127, 255);
        From = "Vertigo";
    };
    ["Sunken Rod"] = {
        Price = math.huge;
        Description = "An ancient, coral-encrusted rod found in shipwreck depths, radiating faint power to lure rare fish. Every 10 catches, you get 25% Luckier chance to pull up a Treasure Map!";
        Luck = 150;
        LureSpeed = 70;
        Strength = 5000;
        LineDistance = 60;
        Resilience = 15;
        Control = 0.15;
        Color = Color3.fromRGB(145, 255, 115);
        BobberTop = Color3.fromRGB(162, 255, 134);
        BobberBottom = Color3.fromRGB(34, 53, 66);
        From = "Forsaken Shores";
    };
    ["Buddy Bond Rod"] = {
        Price = math.huge;
        Description = "A friendly Rod!";
        Luck = 5;
        LureSpeed = 100;
        Strength = 300;
        LineDistance = 20;
        Resilience = 0;
        Control = 0;
        Color = Color3.fromRGB(145, 255, 115);
        BobberTop = Color3.fromRGB(162, 255, 134);
        BobberBottom = Color3.fromRGB(34, 53, 66);
        Unregistered = true;
    };
    ["Ultratech Rod"] = {
        Price = math.huge;
        Description = "A rod of Unknown origin, feels pretty heavy. The rod has a pressed-in text on it's bottom which says 'Ultratech v.3' and a scratched out name next to it which reads as: ZIK [For @Zik_isi]";
        Luck = 150;
        LureSpeed = 80;
        Strength = 10000;
        LineDistance = 100;
        Resilience = 10;
        Control = 0;
        Color = Color3.fromRGB(245, 205, 48);
        BobberTop = Color3.fromRGB(245, 205, 48);
        BobberBottom = Color3.fromRGB(170, 0, 170);
        Unregistered = true;
        DEV = true;
    };
    ["Fischer's Rod"] = {
        Price = math.huge;
        Description = "A fischer's starter rod to get started with Fisching! What else would you do with it?..";
        Luck = 10;
        LureSpeed = 90;
        Strength = 100;
        LineDistance = 20;
        Resilience = 5;
        Control = 0.05;
        Color = Color3.fromRGB(245, 205, 48);
        BobberTop = Color3.fromRGB(245, 205, 48);
        BobberBottom = Color3.fromRGB(170, 0, 170);
        Unregistered = true;
    };
    ["Scurvy Rod"] = {
        Price = 50000;
        Description = "This rod has been on every pirate ship imaginable. Decent at everything, bad at nothing. Just like a pirate should!";
        Luck = 50;
        LureSpeed = 85;
        Strength = 2000;
        LineDistance = 20;
        Resilience = 15;
        Control = 0;
        Color = Color3.fromRGB(245, 205, 48);
        BobberTop = Color3.fromRGB(245, 205, 48);
        BobberBottom = Color3.fromRGB(170, 0, 170);
        From = "Forsaken Shores";
    };
    ["Relic Rod"] = {
        Price = math.huge;
        Requiriments = {
            GatesOpened = {"RelicRodGate"};
        };
        Description = "A really old rod, found from the tombs of ancient isles, crafted out of ancient bone, but does it hold a mysterious power within it?";
        Luck = 25;
        LureSpeed = 80;
        Strength = 2500;
        LineDistance = 20;
        Resilience = 20;
        Control = 0.05;
        Color = Color3.fromRGB(186, 178, 175);
        BobberTop = Color3.fromRGB(245, 213, 195);
        BobberBottom = Color3.fromRGB(133, 170, 158);
        Unregistered = true;
    };
    ["Developers Rod"] = {
        Price = math.huge;
        Description = "A rod made for developers not to have to suffer in fishing.";
        Luck = 150;
        LureSpeed = 99;
        Strength = 99999;
        LineDistance = 150;
        Resilience = 99;
        Control = 1;
        Color = Color3.fromRGB(255, 0, 0);
        BobberTop = Color3.fromRGB(245, 205, 48);
        BobberBottom = Color3.fromRGB(255, 0, 0);
        Unregistered = true;
    };
    ["Mystic Staff"] = {
        Price = math.huge;
        Description = "A powerful staff once held by a mysterious witch who disappeared without a trace... Strangely, its magic seems to attract fish.";
        Luck = 100;
        LureSpeed = 1;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 30;
        Control = 0.4;
        Color = Color3.fromRGB(90, 255, 145);
        BobberTop = Color3.fromRGB(91, 36, 36);
        BobberBottom = Color3.fromRGB(188, 151, 100);
        Unregistered = true;
        DEV = true;
    };
    ["The Twig"] = {
        Price = math.huge;
        Description = "I think it genuinely may break in two. [WoozyNate Only]";
        Luck = 300;
        LureSpeed = 1;
        Strength = math.huge;
        LineDistance = 100;
        Resilience = 50;
        Control = 0;
        Color = Color3.fromRGB(255, 255, 255);
        BobberTop = Color3.fromRGB(172, 172, 172);
        BobberBottom = Color3.fromRGB(59, 59, 59);
        Unregistered = true;
        DEV = true;
    };
    ["Test Rod"] = {
        Price = math.huge;
        Description = "Test Rod Description";
        Luck = 15;
        LureSpeed = 90;
        Strength = 100;
        LineDistance = 15;
        Resilience = 10;
        Control = 0;
        Color = Color3.fromRGB(73, 240, 255);
        BobberTop = Color3.fromRGB(163, 60, 60);
        BobberBottom = Color3.fromRGB(255, 242, 93);
        Unregistered = true;
        DEV = true;
    };
    ["Voyager Rod"] = {
        Price = math.huge;
        Description = "A rod forged by an ancient civilization, capable of mass destruction. All fish have a 25% chance to be fossilized. [Lasers fish with an orbital cannon]";
        Luck = 20;
        LureSpeed = 85;
        Strength = 2800;
        LineDistance = 60;
        Resilience = 0;
        Control = -0.02;
        Color = Color3.fromRGB(204, 181, 255);
        BobberTop = Color3.fromRGB(255, 178, 53);
        BobberBottom = Color3.fromRGB(228, 202, 235);
    };
    ["Rod Of The Forgotten Fang"] = {
        Passive = "Shark";
        Price = math.huge;
        Description = "After 5 perfect catches, triggers a special mode where a Meg jumps out of the Deeps with a higher-tier fish, boasting a 15-20% size buff.";
        Luck = 90;
        LureSpeed = 50;
        Strength = 30000;
        LineDistance = 100;
        Resilience = 15;
        Control = -0.01;
        Color = Color3.fromRGB(49, 155, 255);
        BobberTop = Color3.fromRGB(228, 244, 255);
        BobberBottom = Color3.fromRGB(39, 59, 124);
    };
    ["Rod Of The Eternal King"] = {
        Passive = "RoyalEscort";
        Price = math.huge;
        Description = "Every 30 seconds, a 10% chance summons a 'Royal Escort', boosting luck by 150% for 10 seconds. If you miss a catch, there's a 15% chance of immediately catching a higher rarity fish.";
        Luck = 150;
        LureSpeed = 75;
        Strength = 15000;
        LineDistance = 80;
        Resilience = 5;
        Control = -0.03;
        Color = Color3.fromRGB(255, 221, 25);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
        SplashSound = game.ReplicatedStorage.resources.sounds.sfx.fishing.customSplashes["Eternal King Splash"];
    };
    ["Resourceful Rod"] = {
        Passive = "2xBaits";
        Price = math.huge;
        Description = "Doubles the effects of all bait, enhancing your fishing experience and increasing the efficiency of every catch.";
        Luck = 20;
        LureSpeed = 85;
        Strength = 1000;
        LineDistance = 50;
        Resilience = 0;
        Control = -0.01;
        Color = Color3.fromRGB(255, 75, 15);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
    };
    ["Seasons Rod"] = {
        Passive = "Seasons";
        Price = math.huge;
        Description = "\t\t\tBoosts fish luck by 20% for the current season. It may also grant a \"Seasonal\" mutation that changes the fish's colors based on the season it was caught.\n\n\t\t\tSeasonal Mutation Buffs -> Winter: 2.5x Sell Price,  Summer: +25% Size, Spring: 3x Sell Price\n\t\t";
        Luck = 25;
        LureSpeed = 85;
        Strength = 3000;
        LineDistance = 50;
        Resilience = 10;
        Control = 0.03;
        Color = Color3.fromRGB(255, 185, 115);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
    };
    ["Wisdom Rod"] = {
        Passive = "WisdomPassive";
        Price = math.huge;
        Description = "A mystical rod that rewards consecutive catches, granting a 70-100% XP bonus after 5 successful catches in a row.";
        Luck = 20;
        LureSpeed = 100;
        Strength = 800;
        LineDistance = 50;
        Resilience = 0;
        Control = 0.05;
        Color = Color3.fromRGB(54, 47, 5);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
    };
    ["Celestial Rod"] = {
        Passive = "CelestialPower";
        Price = math.huge;
        Description = "After catching 250 fish, summon Celestial powers for 5 minutes, boosting +50% luck, +30% lure speed. Caught fish also get the Celestial mutation & +30% XP on them!";
        Luck = 40;
        LureSpeed = 70;
        Strength = 6000;
        LineDistance = 70;
        Resilience = 5;
        Control = 0.06;
        Color = Color3.fromRGB(19, 145, 255);
        BobberTop = Color3.fromRGB(58, 134, 255);
        BobberBottom = Color3.fromRGB(43, 208, 189);
    };
    ["The Lost Rod"] = {
        Passive = "PerfectCatch";
        Price = math.huge;
        Description = "After 8 Perfect Catches in a row, it triggers a special mode that boosts the rod's Luck by 125% for the next 3 casts.";
        Luck = 25;
        LureSpeed = 85;
        Strength = math.huge;
        LineDistance = 70;
        Resilience = 5;
        Control = 0.08;
        Color = Color3.fromRGB(64, 255, 102);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
    };
    ["Riptide Rod"] = {
        Passive = "HighTide";
        Price = math.huge;
        Description = "The Riptide Rod fills its Tide Meter by 20% with each Perfect Cast. At max, it enters `High Tide` for 3 casts, boosting rarity chance by 30% and bite speed by 25%.";
        Luck = 25;
        LureSpeed = 85;
        Strength = 3500;
        LineDistance = 50;
        Resilience = 5;
        Control = 0.05;
        Color = Color3.fromRGB(66, 94, 255);
        BobberTop = Color3.fromRGB(255, 211, 33);
        BobberBottom = Color3.fromRGB(124, 72, 8);
    };
}

-- local rods = require("rodsConst")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = game:GetService("MarketplaceService"):GetProductInfo(16732694052).Name .." | Taijitu Tester",
    SubTitle = "Ying & Yang",
    TabWidth = 120,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftAlt
})

-- // // // Services // // // --
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService('StarterGui')
local ContextActionService = game:GetService('ContextActionService')
local UserInputService = game:GetService('UserInputService')

-- // // // Locals // // // --
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local UserPlayer = HumanoidRootPart:WaitForChild("user")
local ActiveFolder = Workspace:FindFirstChild("active")
local FishingZonesFolder = Workspace:FindFirstChild("zones"):WaitForChild("fishing")
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
local NpcFolder = Workspace:FindFirstChild("world"):WaitForChild("npcs")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", PlayerGui)
local shadowCountLabel = Instance.new("TextLabel", screenGui)
local RenderStepped = RunService.RenderStepped
local WaitForSomeone = RenderStepped.Wait

-- // // // Variables // // // --
local CastMode = "Blatant"
local ShakeMode = "Navigation"
local ReelMode = "Blatant"
local CollectMode = "Teleports"
local teleportSpots = {}
local FreezeChar = false
local DayOnlyLoop = nil
local BypassGpsLoop = nil
local Noclip = false
local RunCount = false

-- // // // Functions // // // --
function ShowNotification(String)
    Fluent:Notify({
        Title = "Tester Taijitu",
        Content = String,
        Duration = 5
    })
end

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

spawn(function()
    while true do
        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
        task.wait(0.01)
    end
end)

-- // // // Auto Cast // // // --
local autoCastEnabled = false
local function autoCast()
    if LocalCharacter then
        local tool = LocalCharacter:FindFirstChildOfClass("Tool")
        if tool then
            local hasBobber = tool:FindFirstChild("bobber")
            if not hasBobber then
                if CastMode == "Legit" then
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    HumanoidRootPart.ChildAdded:Connect(function()
                        if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                            HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                if property == "Size" then
                                    if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                    end
                                end
                            end)
                        end
                    end)
                elseif CastMode == "Blatant" then
                    local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                    if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                        task.wait(0.5)
                        local Random = math.random(90, 99)
                        rod.events.cast:FireServer(Random)
                    end
                end
            end
        end
        task.wait(0.5)
    end
end


-- // // // Auto Shake // // // --
local autoShakeEnabled = true
local autoShakeConnection
local function autoShake()
    if ShakeMode == "Navigation" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            task.wait(0.1)
            GuiService.SelectedObject = button
            if GuiService.SelectedObject == button then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            end
            task.wait(0.1)
            GuiService.SelectedObject = nil
        end,function (err)
        end)
    elseif ShakeMode == "Mouse" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            local pos = button.AbsolutePosition
            local size = button.AbsoluteSize
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, LocalPlayer, 0)
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, LocalPlayer, 0)
            task.wait(0.03)
        end,function (err)
        end)
    end
end

local function startAutoShake()
    if autoShakeConnection or not autoShakeEnabled then return end
    autoShakeConnection = RunService.RenderStepped:Connect(autoShake)
end

local function stopAutoShake()
    if autoShakeConnection then
        autoShakeConnection:Disconnect()
        autoShakeConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoShakeEnabled and descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" then
        startAutoShake()
    end
end)

PlayerGui.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoShake()
    end
end)

if autoShakeEnabled and PlayerGui:FindFirstChild("shakeui") and PlayerGui.shakeui:FindFirstChild("safezone") and PlayerGui.shakeui.safezone:FindFirstChild("button") then
    startAutoShake()
end

-- // // // Auto Reel // // // --
local autoReelEnabled = true
local PerfectCatchEnabled = true
local autoReelConnection
local function autoReel()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    local fish = bar and bar:FindFirstChild("fish")
    if playerbar and fish then
        playerbar.Position = fish.Position
    end
end

local function noperfect()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    if playerbar then
        playerbar.Position = UDim2.new(0, 0, -35, 0)
        wait(0.5)
    end
end

local function startAutoReel()
    if ReelMode == "Legit" then
        if autoReelConnection or not autoReelEnabled then return end
        -- noperfect()
        task.wait(2)
        autoReelConnection = RunService.RenderStepped:Connect(autoReel)
    elseif ReelMode == "Blatant" then
        local reel = PlayerGui:FindFirstChild("reel")
        if not reel then return end
        local bar = reel:FindFirstChild("bar")
        local playerbar = bar and bar:FindFirstChild("playerbar")
        playerbar:GetPropertyChangedSignal('Position'):Wait()
        game.ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(100, PerfectCatchEnabled)
    end
end

local function stopAutoReel()
    if autoReelConnection then
        autoReelConnection:Disconnect()
        autoReelConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoReelEnabled and descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        startAutoReel()
    end
end)

PlayerGui.DescendantRemoving:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoReel()
        if autoCastEnabled then
            task.wait(1)
            autoCast()
        end
    end
end)

if autoReelEnabled and PlayerGui:FindFirstChild("reel") and 
    PlayerGui.reel:FindFirstChild("bar") and 
    PlayerGui.reel.bar:FindFirstChild("playerbar") then
    startAutoReel()
end

-- // // // Zone Cast // // // --
ZoneConnection = LocalCharacter.ChildAdded:Connect(function(child)
    if ZoneCast and child:IsA("Tool") and FishingZonesFolder:FindFirstChild(Zone) ~= nil then
        child.ChildAdded:Connect(function(blehh)
            if blehh.Name == "bobber" then
                local RopeConstraint = blehh:FindFirstChildOfClass("RopeConstraint")
                if ZoneCast and RopeConstraint ~= nil then
                    RopeConstraint.Changed:Connect(function(property)
                        if property == "Length" then
                            RopeConstraint.Length = math.huge
                        end
                    end)
                    RopeConstraint.Length = math.huge
                end
                task.wait(1)
                while WaitForSomeone(RenderStepped) do
                    if ZoneCast and blehh.Parent ~= nil then
                        task.wait()
                        blehh.CFrame = FishingZonesFolder[Zone].CFrame
                    else
                        break
                    end
                end
            end
        end)
    end
end)

local backValues = {}
-- // Show Backpack Item Names == 
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
    table.insert(backValues, v.Name)
end

local rodValues = {}

for rodName, _ in pairs(rodsConst) do
    table.insert(rodValues, rodName)
end

-- // Find TpSpots // --
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
for i, v in pairs(TpSpotsFolder:GetChildren()) do
    if table.find(teleportSpots, v.Name) == nil then
        table.insert(teleportSpots, v.Name)
    end
end

-- Sort teleportSpots alphabetically
table.sort(teleportSpots, function(a, b)
    return a:lower() < b:lower()
end)


-- // // // Get Position // // // --
function GetPosition()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		return {
			Vector3.new(0,0,0),
			Vector3.new(0,0,0),
			Vector3.new(0,0,0)
		}
	end
	return {
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z
	}
end

function ExportValue(arg1, arg2)
	return tonumber(string.format("%."..(arg2 or 1)..'f', arg1))
end

-- // // // Sell Item // // // --
function rememberPosition()
    spawn(function()
        local initialCFrame = HumanoidRootPart.CFrame
 
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Parent = HumanoidRootPart
 
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.D = 100
        bodyGyro.P = 10000
        bodyGyro.CFrame = initialCFrame
        bodyGyro.Parent = HumanoidRootPart
 
        while AutoFreeze do
            HumanoidRootPart.CFrame = initialCFrame
            task.wait(0.01)
        end
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
        if bodyGyro then
            bodyGyro:Destroy()
        end
    end)
end


function SellAll()
    local sellAllFunction = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll")
    local result = sellAllFunction:InvokeServer()
end


function OfferAll()
    local offerItemFunction = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("offeritem")
    local result = offerItemFunction:InvokeServer()
end


-- // // // Noclip Stepped // // // --
NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)


-- // // // Tabs Gui // // // --

local Tabs = { 
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Taijitu_Additions = Window:AddTab({ Title = "Taijitu Tab", Icon = "heart" }),
    Main = Window:AddTab({ Title = "Main", Icon = "list" }),
    Items = Window:AddTab({ Title = "Items", Icon = "box" }),
    Teleports = Window:AddTab({ Title = "Teleports", Icon = "map-pin" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
}

local Options = Fluent.Options


do

    Tabs.Home:AddButton({
        Title = "Taijitu script tester",
        Description = "",
        Callback = function()

            task.spawn(function()
                game:GetService("ReplicatedStorage").packages.Net["RE/AppraiseAnywhere/Fire"]:GetChildren()   
                print(v)             
            end)
            
        end
    })

    
    -- // Taijitu Test Tab // --
    local sectionExclus = Tabs.Taijitu_Additions:AddSection("Taiji Features")

    Tabs.Taijitu_Additions:AddButton({
        Title = "Offer Item",
        Description = "",
        Callback = function()
            OfferAll()
        end
    })
    

    -- // Main Tab // --
    local section = Tabs.Main:AddSection("Auto Fishing")

    local ToggleAutoSell = Tabs.Misc:AddToggle("ToggleAutoSell", {Title = "Auto sell fisch every 3 minutes", Default = false })
    ToggleAutoSell:OnChanged(function()
        while Options.ToggleAutoSell.Value == true do
            SellAll()
            wait(180)
            if not Options.ToggleAutoSell.Value then
                return
            end
        end
    end)

    local autoCast = Tabs.Main:AddToggle("autoCast", {Title = "Auto Cast", Default = false })
    autoCast:OnChanged(function()
        local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
        if Options.autoCast.Value == true then
            autoCastEnabled = true
            if LocalPlayer.Backpack:FindFirstChild(RodName) then
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(RodName))
            end
            if LocalCharacter then
                local tool = LocalCharacter:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if not hasBobber then
                        if CastMode == "Legit" then
                            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                            HumanoidRootPart.ChildAdded:Connect(function()
                                if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                                    HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                        if property == "Size" then
                                            if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                            end
                                        end
                                    end)
                                end
                            end)
                        elseif CastMode == "Blatant" then
                            local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                            if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                                task.wait(0.5)
                                local Random = math.random(90, 99)
                                rod.events.cast:FireServer(Random)
                            end
                        end
                    end
                end
                task.wait(1)
            end
        else
            autoCastEnabled = false
        end
    end)
    local autoShake = Tabs.Main:AddToggle("autoShake", {Title = "Auto Shake", Default = false })
    autoShake:OnChanged(function()
        if Options.autoShake.Value == true then
            autoShakeEnabled = true
            startAutoShake()
        else
            autoShakeEnabled = false
            stopAutoShake()
        end
    end)
    local autoReel = Tabs.Main:AddToggle("autoReel", {Title = "Auto Reel", Default = false })
    autoReel:OnChanged(function()
        if Options.autoReel.Value == true then
            autoReelEnabled = true
            startAutoReel()
        else
            autoReelEnabled = false
            stopAutoReel()
        end
    end)
    local FreezeCharacter = Tabs.Main:AddToggle("FreezeCharacter", {Title = "Freeze Character", Default = false })
    FreezeCharacter:OnChanged(function()
        local oldpos = HumanoidRootPart.CFrame
        FreezeChar = Options.FreezeCharacter.Value
        task.wait()
        while WaitForSomeone(RenderStepped) do
            if FreezeChar and HumanoidRootPart ~= nil then
                task.wait()
                HumanoidRootPart.CFrame = oldpos
            else
                break
            end
        end
    end)


    -- // TAIJITU TAB // --

    local Lighting = game:GetService("Lighting")

    -- Function to convert "HH:MM:SS" to total seconds
    local function timeToSeconds(timeString)
        local hours, minutes, seconds = timeString:match("(%d+):(%d+):(%d+)")
        return tonumber(hours) * 3600 + tonumber(minutes) * 60 + tonumber(seconds)
    end
    
    -- Function to check if TimeOfDay is within a range
    local function isTimeBetween(startTime, endTime)
        local currentSeconds = timeToSeconds(Lighting.TimeOfDay)
        local startSeconds = timeToSeconds(startTime)
        local endSeconds = timeToSeconds(endTime)
        return currentSeconds >= startSeconds and currentSeconds <= endSeconds
    end


    local autoSundial = Tabs.Taijitu_Additions:AddToggle("autoSundial", {Title = "Auto Aurora Switcher", Description = "Only use when its already time!",Default = false })
    autoSundial:OnChanged(function()

        while Options.autoSundial.Value do

            --[[        
            if isTimeBetween("19:00:00", "05:59:00") then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Sundial Totem" then
                        -- Equip the Sundial Totem if found
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                        break
                    end
                end
            end
            ]]

            autoCastEnabled = false;
            task.wait(5)

            -- Check if the "Sundial Totem" exists in the player's backpack
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Sundial Totem" then
                    -- Equip the Sundial Totem if found
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    break
                end
            end

            task.wait(25)

            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Aurora Totem" then
                    -- Equip the Sundial Totem if found
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    break
                end
            end

            task.wait(5)

            local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
            autoCastEnabled = true
            if LocalPlayer.Backpack:FindFirstChild(RodName) then
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(RodName))
            end
            if LocalCharacter then
                local tool = LocalCharacter:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if not hasBobber then
                        local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                        if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                            task.wait(0.5)
                            local Random = math.random(90, 99)
                            rod.events.cast:FireServer(Random)
                        end
                    end
                end
                task.wait(1)
            end
            
            while not isTimeBetween("06:00:00", "07:00:00") do
                task.wait(1) -- Check every second
            end

            autoCastEnabled = false;

        end
        autoCastEnabled = false;

    end)

    -- Add a section for Merchant Methods in Fluent UI
     local merchantSection = Tabs.Misc:AddSection("Merchant Methods")

    -- // Mode Tab // --
    local section = Tabs.Main:AddSection("Mode Fishing")
    local autoCastMode = Tabs.Main:AddDropdown("autoCastMode", {
        Title = "Auto Cast Mode",
        Values = {"Legit", "Blatant"},
        Multi = false,
        Default = CastMode,
    })
    autoCastMode:OnChanged(function(Value)
        CastMode = Value
    end)
    local autoShakeMode = Tabs.Main:AddDropdown("autoShakeMode", {
        Title = "Auto Shake Mode",
        Values = {"Navigation", "Mouse"},
        Multi = false,
        Default = ShakeMode,
    })
    autoShakeMode:OnChanged(function(Value)
        ShakeMode = Value
    end)
    local autoReelMode = Tabs.Main:AddDropdown("autoReelMode", {
        Title = "Auto Reel Mode",
        Values = {"Legit", "Blatant"},
        Multi = false,
        Default = ReelMode,
    })
    autoReelMode:OnChanged(function(Value)
        ReelMode = Value
    end)

    -- // Sell Tab // --
    local section = Tabs.Items:AddSection("Sell Items")
    Tabs.Home:AddButton({
        Title = "test appraise",
        Description = "",
        Callback = function()
            local value = game:GetService("ReplicatedStorage"):WaitForChild("packages"):WaitForChild("Net"):WaitForChild("RF/AppraiseAnywhere/Fire"):InvokeServer()
            print(value)
        end
    })
    Tabs.Items:AddButton({
        Title = "Sell All",
        Description = "",
        Callback = function()
            SellAll()
        end
    })

    -- // Treasure Tab // --
    local section = Tabs.Items:AddSection("Treasure")
    Tabs.Items:AddButton({
        Title = "Teleport to Jack Marrow",
        Callback = function()
            HumanoidRootPart.CFrame = CFrame.new(256,133,59.6)
        end
    })
    Tabs.Items:AddButton({
        Title = "Repair Map",
        Callback = function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
                if v.Name == "Treasure Map" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    workspace.world.npcs["Jack Marrow"].treasure.repairmap:InvokeServer()
                end
            end
        end
    })
    Tabs.Items:AddButton({
        Title = "Collect Treasure",
        Callback = function()
            for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    v.HoldDuration = 0
                end
            end
            for i, v in pairs(workspace.world.chests:GetDescendants()) do
                if v:IsA("Part") and v:FindFirstChild("ChestSetup") then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    for _, v in pairs(workspace.world.chests:GetDescendants()) do
                        if v.Name == "ProximityPrompt" then
                            fireproximityprompt(v)
                        end
                    end
                    task.wait(2)
                end 
            end
        end
    })

    local section = Tabs.Items:AddSection("Purchase Rods")
    local selectedRod = nil -- Variable to store the currently selected rod

    local merchantDropdown = Tabs.Items:AddDropdown("MerchantDropdown", {
        Title = "Select a rod to buy:",
        Values = rodValues,
        Multi = false,
        Default = nil,
        Callback = function(value)
            selectedRod = value
        end,
    })
    
    Tabs.Items:AddButton({
        Title = "Select Rod",
        Callback = function()
            if selectedRod then
                local sellAllFunction = game:GetService("ReplicatedStorage").events.purchase:FireServer(selectedRod,"Rod")
                print("Purchased rod:", selectedRod)
            else
                print("Please select a rod first!")
            end
        end,
    })
    

    -- // Teleports Tab // --
    local section = Tabs.Teleports:AddSection("Select Teleport")
    Tabs.Teleports:AddButton({
        Title = "Teleport to Grand Reef",
        Callback = function()
            HumanoidRootPart.CFrame = CFrame.new(-3576.1, 151.2, 525.8)
        end
    })
    Tabs.Teleports:AddButton({
        Title = "Teleport to Cryogenic Canal",
        Callback = function()
            HumanoidRootPart.CFrame = CFrame.new(20023.6,512.4,5431)
        end
    })

    local IslandTPDropdownUI = Tabs.Teleports:AddDropdown("IslandTPDropdownUI", {
        Title = "Area Teleport",
        Values = teleportSpots,
        Multi = false,
        Default = nil,
    })
    IslandTPDropdownUI:OnChanged(function(Value)
        if teleportSpots ~= nil and HumanoidRootPart ~= nil then
            xpcall(function()
                HumanoidRootPart.CFrame = TpSpotsFolder:FindFirstChild(Value).CFrame + Vector3.new(0, 5, 0)
                IslandTPDropdownUI:SetValue(nil)
            end,function (err)
            end)
        end
    end)
    local TotemTPDropdownUI = Tabs.Teleports:AddDropdown("TotemTPDropdownUI", {
        Title = "Select Totem",
        Values = {"Aurora", "Sundial", "Windset", "Smokescreen", "Tempest"},
        Multi = false,
        Default = nil,
    })
    TotemTPDropdownUI:OnChanged(function(Value)
        SelectedTotem = Value
        if SelectedTotem == "Aurora" then
            HumanoidRootPart.CFrame = CFrame.new(-1811, -137, -3282)
            TotemTPDropdownUI:SetValue(nil)
        elseif SelectedTotem == "Sundial" then
            HumanoidRootPart.CFrame = CFrame.new(-1148, 135, -1075)
            TotemTPDropdownUI:SetValue(nil)
        elseif SelectedTotem == "Windset" then
            HumanoidRootPart.CFrame = CFrame.new(2849, 178, 2702)
            TotemTPDropdownUI:SetValue(nil)
        elseif SelectedTotem == "Smokescreen" then
            HumanoidRootPart.CFrame = CFrame.new(2789, 140, -625)
            TotemTPDropdownUI:SetValue(nil)
        elseif SelectedTotem == "Tempest" then
            HumanoidRootPart.CFrame = CFrame.new(35, 133, 1943)
            TotemTPDropdownUI:SetValue(nil)
        end
    end)
    local WorldEventTPDropdownUI = Tabs.Teleports:AddDropdown("WorldEventTPDropdownUI", {
        Title = "Select World Event",
        Values = {"Strange Whirlpool", "Great Hammerhead Shark", "Great White Shark", "Whale Shark", "The Depths - Serpent","Eternal Frostwhale","Ancient Algae"},
        Multi = false,
        Default = nil,
    })
    WorldEventTPDropdownUI:OnChanged(function(Value)
        SelectedWorldEvent = Value
        if SelectedWorldEvent == "Strange Whirlpool" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Isonade")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Strange Whirlpool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing.Isonade.Position + offset)                           -- Strange Whirlpool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great Hammerhead Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great Hammerhead Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great Hammerhead Shark"].Position + offset)         -- Great Hammerhead Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great White Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great White Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great White Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great White Shark"].Position + offset)               -- Great White Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Whale Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Whale Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Whale Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Whale Shark"].Position + offset)                     -- Whale Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "The Depths - Serpent" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found The Depths - Serpent") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["The Depths - Serpent"].Position + offset)            -- The Depths - Serpent
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Eternal Frostwhale" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Golden Tide")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Eternal Frostwhale") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Golden Tide"].Position + offset)            -- Eternal Frostwhale
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Ancient Algae" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Ancient Algae")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Ancient Algae") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Ancient Algae"].Position + offset)            -- Ancient Algae
            WorldEventTPDropdownUI:SetValue(nil)
        end
    end)
    Tabs.Teleports:AddButton({
        Title = "Teleport to Traveler Merchant",
        Description = "Teleports to the Traveler Merchant.",
        Callback = function()
            local Merchant = game.Workspace.active:FindFirstChild("Merchant Boat")
            if not Merchant then return ShowNotification("Not found Merchant") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.active["Merchant Boat"].Boat["Merchant Boat"].r.HandlesR.Position)
        end
    })
    Tabs.Teleports:AddButton({
        Title = "Create Safe Zone",
        Callback = function()
            local SafeZone = Instance.new("Part")
            SafeZone.Size = Vector3.new(30, 1, 30)
            SafeZone.Position = Vector3.new(math.random(-2000,2000), math.random(50000,90000), math.random(-2000,2000))
            SafeZone.Anchored = true
            SafeZone.BrickColor = BrickColor.new("Bright purple")
            SafeZone.Material = Enum.Material.ForceField
            SafeZone.Parent = game.Workspace
            HumanoidRootPart.CFrame = SafeZone.CFrame + Vector3.new(0, 5, 0)
        end
    })

    -- // Character Tab // --
    local section = Tabs.Misc:AddSection("Character")
    local WalkOnWater = Tabs.Misc:AddToggle("WalkOnWater", {Title = "Walk On Water", Default = false })
    WalkOnWater:OnChanged(function()
        for i,v in pairs(workspace.zones.fishing:GetChildren()) do
			if v.Name == WalkZone then
				v.CanCollide = Options.WalkOnWater.Value
                if v.Name == "Ocean" then
                    for i,v in pairs(workspace.zones.fishing:GetChildren()) do
                        if v.Name == "Deep Ocean" then
                            v.CanCollide = Options.WalkOnWater.Value
                        end
                    end
                end
			end
		end
    end)
    local WalkOnWaterZone = Tabs.Misc:AddDropdown("WalkOnWaterZone", {
        Title = "Walk On Water Zone",
        Values = {"Ocean", "Desolate Deep", "The Depths"},
        Multi = false,
        Default = "Ocean",
    })
    WalkOnWaterZone:OnChanged(function(Value)
        WalkZone = Value
    end)
    local WalkSpeedSliderUI = Tabs.Misc:AddSlider("WalkSpeedSliderUI", {
        Title = "Walk Speed",
        Min = 16,
        Max = 200,
        Default = 16,
        Rounding = 1,
    })
    WalkSpeedSliderUI:OnChanged(function(value)
        LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)
    local JumpHeightSliderUI = Tabs.Misc:AddSlider("JumpHeightSliderUI", {
        Title = "Jump Height",
        Min = 50,
        Max = 200,
        Default = 50,
        Rounding = 1,
    })
    JumpHeightSliderUI:OnChanged(function(value)
        LocalPlayer.Character.Humanoid.JumpPower = value
    end)

    local ToggleNoclip = Tabs.Misc:AddToggle("ToggleNoclip", {Title = "Noclip", Default = false })
    ToggleNoclip:OnChanged(function()
        Noclip = Options.ToggleNoclip.Value
    end)

    -- // Misc Tab // --
    local section = Tabs.Misc:AddSection("Misc")
    local BypassRadar = Tabs.Misc:AddToggle("BypassRadar", {Title = "Fish Radar", Default = false })
    BypassRadar:OnChanged(function()
        for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
			if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
				v.Enabled = Options.BypassRadar.Value
			end
		end
    end)
    local BypassGPS = Tabs.Misc:AddToggle("BypassGPS", {Title = "GPS", Default = false })
    BypassGPS:OnChanged(function()
        if Options.BypassGPS.Value == true then
            local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
			XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
			local Pos = GetPosition()
			local StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
			XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
			BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function()
				local Pos = GetPosition()
				StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
				XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font> : "..StringInput
			end)
		else
			if PlayerGui.hud.safezone.backpack:FindFirstChild("xyz") then
				PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()
			end
			if BypassGpsLoop then
				BypassGpsLoop:Disconnect()
				BypassGpsLoop = nil
			end
        end
    end)
    local RemoveFog = Tabs.Misc:AddToggle("RemoveFog", {Title = "Remove Fog", Default = false })
    RemoveFog:OnChanged(function()
        if Options.RemoveFog.Value == true then
            if game:GetService("Lighting"):FindFirstChild("Sky") then
                game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
            end
        else
            if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
                game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
            end
        end
    end)
    local DayOnly = Tabs.Misc:AddToggle("DayOnly", {Title = "Day Only", Default = false })
    DayOnly:OnChanged(function()
        if Options.DayOnly.Value == true then
            DayOnlyLoop = RunService.Heartbeat:Connect(function()
				game:GetService("Lighting").TimeOfDay = "12:00:00"
			end)
		else
			if DayOnlyLoop then
				DayOnlyLoop:Disconnect()
				DayOnlyLoop = nil
			end
        end
    end)


    local DisableOxygen = Tabs.Misc:AddToggle("DisableOxygen", {Title = "Disable Water Oxygen", Default = false })
    DisableOxygen:OnChanged(function()
        LocalPlayer.Character.client.oxygen.Disabled = Options.DisableOxygen.Value
    end)

    local DisablePeakOxygen = Tabs.Misc:AddToggle("DisablePeakOxygen", {Title = "Disable Peak Oxygen", Default = false })
    DisablePeakOxygen:OnChanged(function()
        local peaksInstance = LocalPlayer.Character.client:FindFirstChild("oxygen(peaks)")
        if peaksInstance then
            peaksInstance.Disabled = Options.DisablePeakOxygen.Value
        else
            warn("oxygen(peaks) instance not found in client.")
        end
    end)

    local DisableTemperature = Tabs.Misc:AddToggle("DisableTemperature", {Title = "Disable Temperature", Default = false })
    DisableTemperature:OnChanged(function()
        LocalPlayer.Character.client.temperature.Disabled = Options.DisableTemperature.Value
    end)

    local JustUI = Tabs.Misc:AddToggle("JustUI", {Title = "Show/Hide UIs", Default = true })
    JustUI:OnChanged(function()
        local BlackShow = JustUI.Value
        if BlackShow then
            PlayerGui.hud.safezone.Visible = true
        else
            PlayerGui.hud.safezone.Visible = false
        end
    end)

    local TeleportCoords = Vector3.zero -- Placeholder for teleport coordinates

    -- Input for coordinates
    local Input = Tabs.Misc:AddInput("Input", {
        Title = "Enter coords",
        Numeric = false,
        Finished = false,
        Placeholder = "Enter coords (x, y, z)",
        Callback = function(Value)
            -- Parse the entered coordinates (e.g., "100, 50, 200")
            local x, y, z = Value:match("([^,]+),%s*([^,]+),%s*([^,]+)")
            if x and y and z then
                TeleportCoords = Vector3.new(tonumber(x), tonumber(y), tonumber(z))
                print("Parsed coordinates:", TeleportCoords)
            else
                warn("Invalid coordinate format. Use 'x, y, z'.")
            end
        end
    })

    Tabs.Misc:AddButton({
        Title = "Teleport to coords",
        Callback = function()
            HumanoidRootPart.CFrame = CFrame.new(TeleportCoords)
        end
    })

end

Window:SelectTab(1)
Fluent:Notify({
    Title = "Taiji Test",
    Content = "Executed!",
    Duration = 8
})