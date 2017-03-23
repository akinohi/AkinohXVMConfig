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
         { "$ref": { "path": "def.vehicle" }, "from": 0, "to": 1500, "thickness": 0.5, "alpha": 50 }
       ],
       // Camera direction.
       // Направление камеры от своей техники.
       "camera": [
         { "$ref": { "path": "def.camera" }, "from": 50,    "to": 200,   "thickness": 0.25, "alpha": 60, "color": "0xE60012" },
         { "$ref": { "path": "def.camera" }, "from": 200,   "to": 300,   "thickness": 0.25, "alpha": 60, "color": "0xF39800" },
         { "$ref": { "path": "def.camera" }, "from": 300,   "to": 400,   "thickness": 0.25, "alpha": 60, "color": "0xFFF100" },
         { "$ref": { "path": "def.camera" }, "from": 400,   "to": 500,   "thickness": 0.25, "alpha": 60, "color": "0x009944" },
         { "$ref": { "path": "def.camera" }, "from": 500,   "to": 600,   "thickness": 0.25, "alpha": 60, "color": "0x0068B7" },
         { "$ref": { "path": "def.camera" }, "from": 600,   "to": 700,   "thickness": 0.25, "alpha": 60, "color": "0x373AA2" },
         { "$ref": { "path": "def.camera" }, "from": 700,   "to": 1500,  "thickness": 0.25, "alpha": 60, "color": "0xAC219D" },
         { "$ref": { "path": "def.dot" },    "from": 199.5, "to": 200.5, "thickness": 2.0,  "alpha": 60, "color": "0xF39800" },
         { "$ref": { "path": "def.dot" },    "from": 299.5, "to": 300.5, "thickness": 2.0,  "alpha": 60, "color": "0xFFF100" },
         { "$ref": { "path": "def.dot" },    "from": 399.5, "to": 400.5, "thickness": 2.0,  "alpha": 60, "color": "0x009944" },
         { "$ref": { "path": "def.dot" },    "from": 499.5, "to": 500.5, "thickness": 2.0,  "alpha": 60, "color": "0x0068B7" },
         { "$ref": { "path": "def.dot" },    "from": 599.5, "to": 600.5, "thickness": 2.0,  "alpha": 60, "color": "0x1D2088" },
         { "$ref": { "path": "def.dot" },    "from": 699.5, "to": 700.5, "thickness": 2.0,  "alpha": 60, "color": "0x920783" }
       ],
       // Gun traverse angles may differ depending on vehicle angle relative to ground. See pics at http://goo.gl/ZqlPa
       // Углы горизонтальной наводки могут меняться в зависимости от углов постановки машины на склонах местности. Подробнее по ссылке: http://goo.gl/ZqlPa
       //---------------------------------------------------------------------------------------------------
       // Horizontal gun traverse angle lines.
       // Углы горизонтальной наводки.
       "traverseAngle": [
         { "$ref": { "path": "def.traverseAngle" }, "from": 0, "to": 1500, "thickness": 0.5, "alpha": 50 }
       ]
    }
}