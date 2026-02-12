package L02_SantaSleigh {
    private import ScalarValues::*;

    part def SantaSleigh {
        // Components of the sleigh
        part cockpit {
            doc /* This is where Santa sits. */
            ref item driver = santa;
        }
        part cargoBay  { doc /* Place for the GiftBag. */  }
        part dashboard { doc /* Naughty-Nice dashboard. */ }

        // Entities related to the sleigh
        ref item santa;
        abstract ref part reindeer : Reindeer [9];
       
        ref part dasher  subsets reindeer { constant attribute redefines noseColor = Color::orange; }
        ref part dancer  subsets reindeer { constant attribute redefines noseColor = Color::yellow; }
        ref part prancer subsets reindeer { constant attribute redefines noseColor = Color::green;  }
        ref part vixen   subsets reindeer { constant attribute redefines noseColor = Color::blue;   }
        ref part comet   subsets reindeer { constant attribute redefines noseColor = Color::indigo; }
        ref part cupid   subsets reindeer { constant attribute redefines noseColor = Color::violet; }
        ref part donner  subsets reindeer { constant attribute redefines noseColor = Color::silver; }
        ref part blitzen subsets reindeer { constant attribute redefines noseColor = Color::gold;   }
        ref part rudolph subsets reindeer { constant attribute redefines noseColor = Color::red;    
                                                     attribute redefines energyLevel := 200.0;      }
    }

    part def Reindeer {
        constant attribute noseColor : Color;
        attribute energyLevel : Real default := 100.0;
    }

    enum def Color {
        enum orange; enum yellow; enum green;
        enum blue;   enum indigo; enum violet;
        enum silver; enum gold;   enum red;
    }
}
package trineoHoracio {
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;

    // Se definen las partes del trineo

    part def estructura {
        doc /* Estructura principal del trineo. */
    }

    part def zonaDeCarga {
        doc /* Área de almacenamiento de regalos. */
        attribute capacidad : ISQ::VolumeValue;
        attribute cantidadDeRegalos : Integer;
    }

    part def base {
        doc /* Base deslizante del trineo. */
    }

    part def asiento {
        doc /* Asiento del conductor. */
    }

    part def rieles {
        doc /* Rieles para deslizamiento sobre nieve. */
    }

    part def renos {
        doc /* Definición de los renos que tiran del trineo. */
        attribute colorDeNariz : String default "negro";
        attribute numeroDePatas : Integer default = 4;
    }
}