function gui = initializeGUI()
%# start creating GUI
    gui = struct();

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %# define lists of colors and markers for plot
    z = 255;
    gui.style.color     = {[176/z   0/z   0/z],[255/z 100/z 100/z],[236/z 106/z 170/z],[228/z 106/z 236/z],[134/z  77/z 230/z],...
                           [  0/z   0/z 176/z],[ 69/z  77/z 227/z],[ 69/z 162/z 227/z],[103/z 222/z 226/z],[103/z 226/z 175/z],...
                           [109/z 226/z 103/z],[169/z 226/z 103/z],[219/z 226/z 103/z],[241/z 162/z  85/z],[244/z 121/z  55/z],...
                           [169/z 169/z 169/z],[90/z,90/z,90/z]};
    gui.style.color_LI  = {[255/z 207/z 38/z],[255/z 205/z 37/z],[255/z 204/z 37/z],[255/z 203/z 37/z],[255/z 202/z 37/z],...
                           [255/z 201/z 37/z],[255/z 200/z 37/z],[255/z 199/z 37/z],[255/z 198/z 37/z],[255/z 197/z 37/z],...
                           [255/z 195/z 37/z],[255/z 194/z 37/z],[255/z 193/z 37/z],[255/z 192/z 37/z],[255/z 191/z 37/z],...
                           [255/z 190/z 37/z],[255/z 189/z 37/z],[255/z 188/z 37/z],[255/z 187/z 37/z],[255/z 185/z 37/z],...
                           [255/z 184/z 37/z],[255/z 183/z 37/z],[255/z 182/z 37/z],[255/z 181/z 37/z],[255/z 180/z 37/z],...
                           [255/z 179/z 37/z],[255/z 178/z 37/z],[255/z 177/z 37/z],[255/z 175/z 37/z],[255/z 174/z 37/z],...
                           [255/z 173/z 37/z],[255/z 172/z 37/z],[255/z 171/z 37/z],[255/z 170/z 36/z],[255/z 169/z 36/z],...
                           [255/z 168/z 36/z],[255/z 167/z 36/z],[255/z 165/z 36/z],[255/z 164/z 36/z],[255/z 163/z 36/z],...
                           [255/z 162/z 36/z],[255/z 161/z 36/z],[255/z 160/z 36/z],[255/z 159/z 36/z],[255/z 158/z 36/z],...
                           [255/z 157/z 36/z],[255/z 155/z 36/z],[255/z 154/z 36/z],[255/z 153/z 36/z],[255/z 152/z 36/z],...
                           [255/z 151/z 36/z],[255/z 150/z 36/z],[255/z 149/z 36/z],[255/z 148/z 36/z],[255/z 147/z 36/z],...
                           [255/z 145/z 36/z],[255/z 144/z 36/z],[255/z 143/z 36/z],[255/z 142/z 36/z],[255/z 141/z 36/z],...
                           [255/z 140/z 36/z],[255/z 139/z 36/z],[255/z 138/z 36/z],[255/z 137/z 36/z],[255/z 136/z 36/z],...
                           [255/z 132/z 34/z],[255/z 130/z 33/z],[255/z 129/z 33/z],[255/z 128/z 33/z],[255/z 127/z 33/z],...
                           [255/z 126/z 33/z],[255/z 125/z 32/z],[255/z 124/z 32/z],[255/z 123/z 32/z],[255/z 122/z 32/z],...
                           [255/z 121/z 32/z],[255/z 120/z 32/z],[255/z 119/z 31/z],[255/z 118/z 31/z],[255/z 117/z 31/z],...
                           [255/z 116/z 31/z],[255/z 115/z 31/z],[255/z 114/z 30/z],[255/z 113/z 30/z],[255/z 112/z 30/z],...
                           [255/z 111/z 30/z],[255/z 110/z 30/z],[255/z 109/z 30/z],[255/z 108/z 29/z],[255/z 107/z 29/z],...
                           [255/z 106/z 29/z],[255/z 104/z 29/z],[255/z 103/z 29/z],[255/z 102/z 28/z],[255/z 101/z 28/z],...
                           [255/z 100/z 28/z],[255/z 99/z 28/z],[255/z 98/z 28/z],[255/z 97/z 28/z],[255/z 96/z 27/z],...
                           [255/z 95/z 27/z],[255/z 94/z 27/z],[255/z 93/z 27/z],[255/z 92/z 27/z],[255/z 91/z 27/z],...
                           [255/z 90/z 26/z],[255/z 89/z 26/z],[255/z 88/z 26/z],[255/z 87/z 26/z],[255/z 86/z 26/z],...
                           [255/z 85/z 25/z],[255/z 84/z 25/z],[255/z 83/z 25/z],[255/z 82/z 25/z],[255/z 81/z 25/z],...
                           [255/z 80/z 25/z],[255/z 78/z 24/z],[255/z 77/z 24/z],[255/z 76/z 24/z],[255/z 75/z 24/z],...
                           [255/z 74/z 24/z],[255/z 73/z 23/z],[255/z 72/z 23/z],[255/z 71/z 23/z],[255/z 70/z 23/z],...
                           [255/z 69/z 23/z],[255/z 68/z 23/z],[255/z 67/z 22/z],[255/z 66/z 22/z],[255/z 65/z 22/z],...
                           [255/z 64/z 22/z],[255/z 63/z 22/z],[255/z 62/z 22/z],[255/z 61/z 21/z],[255/z 60/z 21/z],...
                           [255/z 59/z 21/z],[255/z 58/z 21/z],[255/z 57/z 21/z],[255/z 56/z 20/z],[255/z 55/z 20/z],...
                           [255/z 54/z 20/z],[255/z 53/z 20/z],[255/z 51/z 20/z],[255/z 50/z 20/z],[255/z 49/z 19/z],...
                           [255/z 48/z 19/z],[255/z 47/z 19/z],[255/z 46/z 19/z],[255/z 45/z 19/z],[255/z 44/z 18/z],...
                           [255/z 43/z 18/z],[255/z 42/z 18/z],[255/z 41/z 18/z],[255/z 40/z 18/z],[255/z 39/z 18/z],...
                           [255/z 38/z 17/z],[255/z 37/z 17/z],[255/z 36/z 17/z],[255/z 35/z 17/z],[255/z 34/z 17/z],...
                           [255/z 33/z 17/z],[255/z 32/z 16/z],[255/z 31/z 16/z],[255/z 30/z 16/z],[255/z 29/z 16/z],...
                           [255/z 28/z 16/z],[255/z 27/z 15/z],[255/z 25/z 15/z],[255/z 24/z 15/z],[255/z 23/z 15/z],...
                           [255/z 22/z 15/z],[255/z 21/z 15/z],[255/z 20/z 14/z],[255/z 19/z 14/z],[255/z 18/z 14/z],...
                           [255/z 17/z 14/z],[255/z 16/z 14/z],[255/z 15/z 13/z],[255/z 14/z 13/z],[255/z 13/z 13/z],...
                           [255/z 12/z 13/z],[255/z 11/z 13/z],[255/z 10/z 13/z],[255/z 9/z 12/z],[255/z 8/z 12/z],...
                           [255/z 7/z 12/z],[255/z 6/z 12/z],[255/z 5/z 12/z],[255/z 4/z 11/z],[255/z 3/z 11/z],...
                           [255/z 2/z 11/z],[255/z 1/z 11/z],[255/z 0/z 11/z],[255/z 0/z 11/z],[250/z 0/z 10/z],...
                           [246/z 0/z 10/z],[242/z 0/z 10/z],[238/z 0/z 10/z],[234/z 0/z 10/z],[230/z 0/z 10/z],...
                           [226/z 0/z 9/z],[222/z 0/z 9/z],[217/z 0/z 9/z],[213/z 0/z 9/z],[209/z 0/z 9/z],[205/z 0/z 8/z],...
                           [201/z 0/z 8/z],[197/z 0/z 8/z],[193/z 0/z 8/z],[189/z 0/z 8/z],[185/z 0/z 8/z],[180/z 0/z 7/z],...
                           [176/z 0/z 7/z],[172/z 0/z 7/z],[168/z 0/z 7/z],[164/z 0/z 7/z],[160/z 0/z 6/z],[156/z 0/z 6/z],...
                           [152/z 0/z 6/z],[148/z 0/z 6/z],[143/z 0/z 6/z],[139/z 0/z 6/z],[135/z 0/z 5/z],[131/z 0/z 5/z],...
                           [127/z 0/z 5/z],[123/z 0/z 5/z],[119/z 0/z 5/z],[115/z 0/z 5/z],[111/z 0/z 4/z],[106/z 0/z 4/z],...
                           [102/z 0/z 4/z],[98/z 0/z 4/z],[94/z 0/z 4/z],[90/z 0/z 3/z],[86/z 0/z 3/z],[82/z 0/z 3/z],...
                           [78/z 0/z 3/z],[74/z 0/z 3/z],[69/z 0/z 3/z],[65/z 0/z 2/z],[61/z 0/z 2/z],[57/z 0/z 2/z],...
                           [53/z 0/z 2/z],[49/z 0/z 2/z],[45/z 0/z 1/z],[41/z 0/z 1/z],[37/z 0/z 1/z],[32/z 0/z 1/z],[28/z 0/z 1/z],...
                           [24/z 0/z 1/z],[20/z 0/z 0/z],[16/z 0/z 0/z],[12/z 0/z 0/z],[8/z 0/z 0/z],[4/z 0/z 0/z],[0/z 0/z 0/z]};
    gui.style.marker    = {'^','v','>','<','o','s','d','+','x','p','h','*','.'};
    gui.style.line      = {'-','--',':','-.'};

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %# define fontsizes for GUI
    gui.fontsize = struct();
    gui.fontsize.general    = 11;
    gui.fontsize.dir        = 10;
    gui.fontsize.bigtext    = 18;
    gui.fontsize.btn        = 12;
    gui.fontsize.smallbtn   =  8;
    gui.fontsize.label      = 14;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %# define units for GUI
    gui.units.V = 'V';
    gui.units.voltage = gui.units.V;
    gui.units.bias = gui.units.V;
    gui.units.mppV = gui.units.V;
    gui.units.VOC = gui.units.V;

    gui.units.I = 'mA';
    gui.units.current = gui.units.I;
    gui.units.mppI = gui.units.I;
    gui.units.ISC = gui.units.I;

    gui.units.J = 'mA/cm2';
    gui.units.currentdensity = gui.units.J;
    gui.units.mppJ = gui.units.J;
    gui.units.JSC = gui.units.J;

    gui.units.PCE = '%';
    gui.units.mpp = 'mW/cm2';
    gui.units.LI = 'mW/cm2';
    gui.units.Power = 'mW';
    gui.units.ActiveArea = 'cm2';
    gui.units.Diameter = 'mm';
    
    gui.units.EnergyDensity = 'mJ/cm2';
    gui.units.PowerDensity = 'mW/cm2';

    gui.units.lambda = 'nm';
    gui.units.wavelength = gui.units.lambda;
    gui.units.Wavelength = gui.units.lambda;
    gui.units.PhotonFlux = 'photons/cm2';
    gui.units.EQE = '%';
    gui.units.EQExphase = '%';
    gui.units.EQEyphase = '%';

    gui.units.FF = '%';
    gui.units.Rs = 'Ohm/cm2';
    gui.units.Rsh = 'Ohm/cm2';
    
    gui.units.Time = 's';
    gui.units.T = gui.units.Time;
    gui.units.Delay = gui.units.Time;
    gui.units.LightSoaking = gui.units.Time;
    gui.units.VoltageStabilization = gui.units.Time;
    gui.units.TimeStep = gui.units.Time;
    
    gui.units.Temperature = 'K';
    
    gui.units.FilterPosition = 'steps';
end