/**
 * Minimap lines. Only for owned vehicle.
 * Линии на миникарте. Только для своей техники.
 */
{
  "def": {
     // "inmeters": true  - make line size to be in real map meters.
     // "inmeters": false - make line size to be in minimap interface clip points. Minimap interface clip side is 210 points.
     // "inmeters": true  - дистанция линии в метрах реальной карты.
     // "inmeters": false - дистанция линии в точках миникарты. Сторона миникарты 210 точек.
     // "enabled": true - включен; "color" - цвет.
     // Own vehicle direction definition.
     // Шаблон направления корпуса своей техники.
    "vehicle":       { "enabled": true, "inmeters": true, "color": "0xFFFFFF" },
     // Camera direction definition.
     // Шаблон направления камеры от своей техники.
    "camera":        { "enabled": true, "inmeters": true, "color": "0xFFFFFF" },
     // Dots definition.
     // Шаблон точек.
    "dot":           { "enabled": true, "inmeters": true, "color": "0xFFFFFF" },
     // Horizontal gun traverse angle definition.
     // Шаблон угла горизонтальной наводки.
    "traverseAngle": { "enabled": true, "inmeters": true, "color": "0xFF8000" }
  },
  "lines": {
       // Distance between farthest corners at 1km map is somewhat more than 1400 meters.
       // Sections can contain any number of lines.
       // To set a point try setting line with length of one and large thickness.
       // You can leave one line for simplicity. Remember comma positioning rules.
       //---------------------------------------------------------------------------------------------------
       // Дистанция из угла в угол на километровой карте получается немногим более 1400 метров.
       // В секциях располагается произвольное кол-во отрезков.
       // Для постановки точки попробуйте отрезок длиной в единицу и с большой толщиной.
       // Для простоты можете оставить один длинный отрезок, не забыв убрать запятую. В конце секции запятая не ставится.
       // "from" - начало отрезка; "to" - конец; "thickness" - толщина; "alpha" - прозрачность.
       //---------------------------------------------------------------------------------------------------
       // Own vehicle direction.
       // Направление корпуса своей техники.
       "vehicle": [
         { "$ref": { "path": "def.vehicle" }, "from": 0, "to": 2000, "thickness": 0.5, "alpha": 50 }
       ],
       // Camera direction.
       // Направление камеры от своей техники.
       "camera": [
         { "$ref": { "path": "def.camera" }, "from": 50,    "to": 400,    "thickness": 0.25, "alpha": 60, "color": "0xF2A0A1" },
         { "$ref": { "path": "def.dot" },    "from": 99.5,  "to": 100.5,  "thickness": 2.0,  "alpha": 60, "color": "0xF2A0A1" },
         { "$ref": { "path": "def.dot" },    "from": 199.5, "to": 200.5,  "thickness": 2.0,  "alpha": 60, "color": "0xF2A0A1" },
         { "$ref": { "path": "def.dot" },    "from": 299.5, "to": 300.5,  "thickness": 2.0,  "alpha": 60, "color": "0xF2A0A1" },
         { "$ref": { "path": "def.dot" },    "from": 399.5, "to": 400.5,  "thickness": 2.0,  "alpha": 60, "color": "0xF2A0A1" },
         { "$ref": { "path": "def.camera" }, "from": 400,   "to": 700,    "thickness": 0.25, "alpha": 60, "color": "0xA8C97F" },
         { "$ref": { "path": "def.dot" },    "from": 499.5, "to": 500.5,  "thickness": 2.0,  "alpha": 60, "color": "0xA8C97F" },
         { "$ref": { "path": "def.dot" },    "from": 599.5, "to": 600.5,  "thickness": 2.0,  "alpha": 60, "color": "0xA8C97F" },
         { "$ref": { "path": "def.dot" },    "from": 699.5, "to": 700.5,  "thickness": 2.0,  "alpha": 60, "color": "0xA8C97F" },
         { "$ref": { "path": "def.camera" }, "from": 700,   "to": 1500,   "thickness": 0.25, "alpha": 60, "color": "0x89C3EB" },
         { "$ref": { "path": "def.dot" },    "from": 799.5, "to": 800.5,  "thickness": 2.0,  "alpha": 60, "color": "0x89C3EB" },
         { "$ref": { "path": "def.dot" },    "from": 899.5, "to": 900.5,  "thickness": 2.0,  "alpha": 60, "color": "0x89C3EB" },
         { "$ref": { "path": "def.dot" },    "from": 999.5, "to": 1000.5, "thickness": 2.0,  "alpha": 60, "color": "0x89C3EB" }
       ],
       // Gun traverse angles may differ depending on vehicle angle relative to ground. See pics at https://goo.gl/ZqlPa
       // Углы горизонтальной наводки могут меняться в зависимости от углов постановки машины на склонах местности. Подробнее по ссылке: https://goo.gl/ZqlPa
       //---------------------------------------------------------------------------------------------------
       // Horizontal gun traverse angle lines.
       // Углы горизонтальной наводки.
       "traverseAngle": [
         { "$ref": { "path": "def.traverseAngle" }, "from": 0, "to": 1500, "thickness": 0.5, "alpha": 50 }
       ]
    }
}