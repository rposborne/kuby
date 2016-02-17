module Kuby
  class Link
    API_MAP = {
      altitude: 'v.altitude',
      height: 'v.heightFromTerrain',
      terrain_height: 'v.terrainHeight',
      mission_time: 'v.missionTime',
      surface_velocity: 'v.surfaceVelocity',
      surface_velocity_x: 'v.surfaceVelocityx',
      surface_velocity_y: 'v.surfaceVelocityy',
      surface_velocity_z: 'v.surfaceVelocityz',
      angular_velocity: 'v.angularVelocity',
      orbital_velocity: 'v.orbitalVelocity',
      surface_speed: 'v.surfaceSpeed',
      vertical_speed: 'v.verticalSpeed',
      atmospheric_density: 'v.atmosphericDensity',
      actiongroup_1: 'f.ag1',
      actiongroup_2: 'f.ag2',
      actiongroup_3: 'f.ag3',
      actiongroup_4: 'f.ag4',
      actiongroup_5: 'f.ag5',
      actiongroup_6: 'f.ag6',
      actiongroup_7: 'f.ag7',
      actiongroup_8: 'f.ag8',
      actiongroup_9: 'f.ag9',
      actiongroup_10: 'f.ag10',
      lat: 'v.lat',
      long: 'v.long',
      dynamic_pressure: 'v.dynamicPressure',
      name: 'v.name',
      version: 'a.version',
      heading: 'n.heading',
      pitch: 'n.pitch',
      roll: 'n.roll',
      pause_value: 'p.paused',
      abort: 'f.abort',
      brake: 'f.brake',
      stage!: 'f.stage',
      throttle: 'f.throttle',
      throttle_down: 'f.throttleDown',
      throttle_up: 'f.throttleUp',
      throttle_full: 'f.throttleFull',
      throttle_zero: 'f.throttleZero',
      toggle_gear: 'f.gear',
      toggle_light: 'f.light',
      toggle_rcs: 'f.rcs',
      toggle_sas: 'f.sas',
      g_force: 'v.geeForce',
      set_yaw: 'v.setYaw',
      set_pitch: 'v.setPitch',
      set_roll: 'v.setRoll',
      fly_by_wire: 'v.setFbW',
      pitch_yaw_roll_xyz: 'v.setPitchYawRollXYZ',
      set_throttle: 'f.setThrottle',
      resource: 'r.resource',
      current_stage_resource: 'r.resourceCurrent',
      current_stage_max_resource: 'r.resourceCurrentMax',
      max_resource: 'r.resourceMax',
      # Returns an integer indicating the state of antenna. 0 - Flight scene; 1 - Paused; 2 - No power; 3 - Off; 4 - Not found.
      # Plotable

      setYaw: 'v.setYaw',
      # Yaw [float yaw]
      # Not Plotable

      setPitch: 'v.setPitch',
      # Pitch [float pitch]
      # Not Plotable

      setRoll: 'v.setRoll',
      # Roll [float roll]
      # Not Plotable

      setFbW: 'v.setFbW',
      # Set Fly by Wire On or Off [int state]
      # Not Plotable

      setPitchYawRollXYZ: 'v.setPitchYawRollXYZ',
      # Set pitch, yaw, roll, X, Y and Z [float pitch, yaw, roll, x, y, z]
      # Not Plotable

      setAttitude: 'v.setAttitude',
      # Set pitch, yaw, roll [float pitch, yaw, roll]
      # Not Plotable

      setTranslation: 'v.setTranslation',
      # Set X, Y and Z [float x, y, z]
      # Not Plotable

      stage: 'f.stage',
      # Stage
      # Not Plotable

      setThrottle: 'f.setThrottle',
      # Set Throttle [float magnitude]
      # Not Plotable

      throttle: 'f.throttle',
      # Throttle
      # Plotable

      throttleUp: 'f.throttleUp',
      # Throttle Up
      # Not Plotable

      throttleZero: 'f.throttleZero',
      # Throttle Zero
      # Not Plotable

      throttleFull: 'f.throttleFull',
      # Throttle Full
      # Not Plotable

      throttleDown: 'f.throttleDown',
      # Throttle Down
      # Not Plotable

      rcs: 'f.rcs',
      # RCS [optional bool on/off]
      # Not Plotable

      sas: 'f.sas',
      # SAS [optional bool on/off]
      # Not Plotable

      light: 'f.light',
      # Light [optional bool on/off]
      # Not Plotable

      gear: 'f.gear',
      # Gear [optional bool on/off]
      # Not Plotable

      brake: 'f.brake',
      # Brake [optional bool on/off]
      # Not Plotable

      abort: 'f.abort',
      # Abort [optional bool on/off]
      # Not Plotable

      ag1: 'f.ag1',
      # Action Group 1 [optional bool on/off]
      # Not Plotable

      ag2: 'f.ag2',
      # Action Group 2 [optional bool on/off]
      # Not Plotable

      ag3: 'f.ag3',
      # Action Group 3 [optional bool on/off]
      # Not Plotable

      ag4: 'f.ag4',
      # Action Group 4 [optional bool on/off]
      # Not Plotable

      ag5: 'f.ag5',
      # Action Group 5 [optional bool on/off]
      # Not Plotable

      ag6: 'f.ag6',
      # Action Group 6 [optional bool on/off]
      # Not Plotable

      ag7: 'f.ag7',
      # Action Group 7 [optional bool on/off]
      # Not Plotable

      ag8: 'f.ag8',
      # Action Group 8 [optional bool on/off]
      # Not Plotable

      ag9: 'f.ag9',
      # Action Group 9 [optional bool on/off]
      # Not Plotable

      ag10: 'f.ag10',
      # Action Group 10 [optional bool on/off]
      # Not Plotable

      rcsValue: 'v.rcsValue',
      # Query RCS value
      # Plotable

      sasValue: 'v.sasValue',
      # Query SAS value
      # Plotable

      lightValue: 'v.lightValue',
      # Query light value
      # Plotable

      brakeValue: 'v.brakeValue',
      # Query brake value
      # Plotable

      gearValue: 'v.gearValue',
      # Query gear value
      # Plotable

      smartassoff: 'mj.smartassoff',
      # Smart ASS Off
      # Not Plotable

      node: 'mj.node',
      # Node
      # Not Plotable

      prograde: 'mj.prograde',
      # Prograde
      # Not Plotable

      retrograde: 'mj.retrograde',
      # Retrograde
      # Not Plotable

      normalplus: 'mj.normalplus',
      # Normal Plus
      # Not Plotable

      normalminus: 'mj.normalminus',
      # Normal Minus
      # Not Plotable

      radialplus: 'mj.radialplus',
      # Radial Plus
      # Not Plotable

      radialminus: 'mj.radialminus',
      # Radial Minus
      # Not Plotable

      targetplus: 'mj.targetplus',
      # Target Plus
      # Not Plotable

      targetminus: 'mj.targetminus',
      # Target Minus
      # Not Plotable

      relativeplus: 'mj.relativeplus',
      # Relative Plus
      # Not Plotable

      relativeminus: 'mj.relativeminus',
      # Relative Minus
      # Not Plotable

      parallelplus: 'mj.parallelplus',
      # Parallel Plus
      # Not Plotable

      parallelminus: 'mj.parallelminus',
      # Parallel Minus
      # Not Plotable

      surface: 'mj.surface',
      # Surface [float heading, float pitch]
      # Not Plotable

      surface2: 'mj.surface2',
      # Surface [double heading, double pitch, double roll]
      # Not Plotable

      timeWarp: 't.timeWarp',
      # Time Warp [int rate]
      # Not Plotable

      universalTime: 't.universalTime',
      # Universal Time
      # Plotable

      pause: 't.pause',
      # Pause game
      # Not Plotable

      unpause: 't.unpause',
      # Unpause game
      # Not Plotable

      name: 'tar.name',
      # Target Name
      # Plotable

      type: 'tar.type',
      # Target Type
      # Plotable

      distance: 'tar.distance',
      # Target Distance
      # Plotable

      relativeVelocity: 'tar.o.relativeVelocity',
      # Target Relative Velocity
      # Plotable

      velocity: 'tar.o.velocity',
      # Target Velocity
      # Plotable

      pea: 'tar.o.PeA',
      # Target Periapsis
      # Plotable

      apa: 'tar.o.ApA',
      # Target Apoapsis
      # Plotable

      timeToAp: 'tar.o.timeToAp',
      # Target Time to Apoapsis
      # Plotable

      timeToPe: 'tar.o.timeToPe',
      # Target Time to Periapsis
      # Plotable

      inclination: 'tar.o.inclination',
      # Target Inclination
      # Plotable

      eccentricity: 'tar.o.eccentricity',
      # Target Eccentricity
      # Plotable

      period: 'tar.o.period',
      # Target Orbital Period
      # Plotable

      argumentOfPeriapsis: 'tar.o.argumentOfPeriapsis',
      # Target Argument of Periapsis
      # Plotable

      timeToTransition1: 'tar.o.timeToTransition1',
      # Target Time to Transition 1
      # Plotable

      timeToTransition2: 'tar.o.timeToTransition2',
      # Target Time to Transition 2
      # Plotable

      sma: 'tar.o.sma',
      # Target Semimajor Axis
      # Plotable

      lan: 'tar.o.lan',
      # Target Longitude of Ascending Node
      # Plotable

      maae: 'tar.o.maae',
      # Target Mean Anomaly at Epoch
      # Plotable

      timeOfPeriapsisPassage: 'tar.o.timeOfPeriapsisPassage',
      # Target Time of Periapsis Passage
      # Plotable

      trueAnomaly: 'tar.o.trueAnomaly',
      # Target True Anomaly
      # Plotable

      orbitingBody: 'tar.o.orbitingBody',
      # Target Orbiting Body
      # Plotable

      relativeVelocity: 'o.relativeVelocity',
      # Relative Velocity
      # Plotable

      PeA: 'o.PeA',
      # Periapsis
      # Plotable

      ApA: 'o.ApA',
      # Apoapsis
      # Plotable

      timeToAp: 'o.timeToAp',
      # Time to Apoapsis
      # Plotable

      timeToPe: 'o.timeToPe',
      # Time to Periapsis
      # Plotable

      inclination: 'o.inclination',
      # Inclination
      # Plotable

      eccentricity: 'o.eccentricity',
      # Eccentricity
      # Plotable

      epoch: 'o.epoch',
      # Epoch
      # Plotable

      period: 'o.period',
      # Orbital Period
      # Plotable

      argumentOfPeriapsis: 'o.argumentOfPeriapsis',
      # Argument of Periapsis
      # Plotable

      timeToTransition1: 'o.timeToTransition1',
      # Time to Transition 1
      # Plotable

      timeToTransition2: 'o.timeToTransition2',
      # Time to Transition 2
      # Plotable

      sma: 'o.sma',
      # Semimajor Axis
      # Plotable

      lan: 'o.lan',
      # Longitude of Ascending Node
      # Plotable

      maae: 'o.maae',
      # Mean Anomaly at Epoch
      # Plotable

      timeOfPeriapsisPassage: 'o.timeOfPeriapsisPassage',
      # Time of Periapsis Passage
      # Plotable

      trueAnomaly: 'o.trueAnomaly',
      # True Anomaly
      # Plotable

      sensor: 's.sensor',
      # Sensor Information [string sensor type]
      # Plotable

      temp: 's.sensor.temp',
      # Temperature sensor information
      # Plotable

      pres: 's.sensor.pres',
      # Pressure sensor information
      # Plotable

      grav: 's.sensor.grav',
      # Gravity sensor information
      # Plotable

      acc: 's.sensor.acc',
      # Acceleration sensor information
      # Plotable

      altitude: 'v.altitude',
      # Altitude
      # Plotable

      heightFromTerrain: 'v.heightFromTerrain',
      # Height from Terrain
      # Plotable

      terrainHeight: 'v.terrainHeight',
      # Terrain Height
      # Plotable

      missionTime: 'v.missionTime',
      # Mission Time
      # Plotable

      surfaceVelocity: 'v.surfaceVelocity',
      # Surface Velocity
      # Plotable

      surfaceVelocityx: 'v.surfaceVelocityx',
      # Surface Velocity x
      # Plotable

      surfaceVelocityy: 'v.surfaceVelocityy',
      # Surface Velocity y
      # Plotable

      surfaceVelocityz: 'v.surfaceVelocityz',
      # Surface Velocity z
      # Plotable

      angularVelocity: 'v.angularVelocity',
      # Angular Velocity
      # Plotable

      orbitalVelocity: 'v.orbitalVelocity',
      # Orbital Velocity
      # Plotable

      surfaceSpeed: 'v.surfaceSpeed',
      # Surface Speed
      # Plotable

      verticalSpeed: 'v.verticalSpeed',
      # Vertical Speed
      # Plotable

      geeForce: 'v.geeForce',
      # G-Force
      # Plotable

      atmosphericDensity: 'v.atmosphericDensity',
      # Atmospheric Density
      # Plotable

      long: 'v.long',
      # Longitude
      # Plotable

      lat: 'v.lat',
      # Latitude
      # Plotable

      dynamicPressure: 'v.dynamicPressure',
      # Dynamic Pressure
      # Plotable

      name: 'v.name',
      # Name
      # Plotable

      body: 'v.body',
      # Body Name
      # Plotable

      angleToPrograde: 'v.angleToPrograde',
      # Angle to Prograde
      # Plotable

      name: 'b.name',
      # Body Name [body id]
      # Plotable

      maxAtmosphere: 'b.maxAtmosphere',
      # Body Atmosphere Depth [body id]
      # Plotable

      radius: 'b.radius',
      # Body Radius [body id]
      # Plotable

      atmosphereContainsOxygen: 'b.atmosphereContainsOxygen',
      # Atmosphere contains oxygen [body id]
      # Plotable

      soi: 'b.soi',
      # Body Sphere of Influence [body id]
      # Plotable

      rotationPeriod: 'b.rotationPeriod',
      # Rotation Period [body id]
      # Plotable

      tidallyLocked: 'b.tidallyLocked',
      # Tidally Locked [body id]
      # Plotable

      number: 'b.number',
      # Number of Bodies
      # Plotable

      gravParameter: 'b.o.gravParameter',
      # Body Gravitational Parameter [body id]
      # Plotable

      relativeVelocity: 'b.o.relativeVelocity',
      # Relative Velocity [body id]
      # Plotable

      PeA: 'b.o.PeA',
      # Periapsis [body id]
      # Plotable

      ApA: 'b.o.ApA',
      # Apoapsis [body id]
      # Plotable

      timeToAp: 'b.o.timeToAp',
      # Time to Apoapsis [body id]
      # Plotable

      timeToPe: 'b.o.timeToPe',
      # Time to Periapsis [body id]
      # Plotable

      inclination: 'b.o.inclination',
      # Inclination [body id]
      # Plotable

      eccentricity: 'b.o.eccentricity',
      # Eccentricity [body id]
      # Plotable

      period: 'b.o.period',
      # Orbital Period [body id]
      # Plotable

      argumentOfPeriapsis: 'b.o.argumentOfPeriapsis',
      # Argument of Periapsis [body id]
      # Plotable

      timeToTransition1: 'b.o.timeToTransition1',
      # Time to Transition 1 [body id]
      # Plotable

      timeToTransition2: 'b.o.timeToTransition2',
      # Time to Transition 2 [body id]
      # Plotable

      sma: 'b.o.sma',
      # Semimajor Axis [body id]
      # Plotable

      lan: 'b.o.lan',
      # Longitude of Ascending Node [body id]
      # Plotable

      maae: 'b.o.maae',
      # Mean Anomaly at Epoch [body id]
      # Plotable

      timeOfPeriapsisPassage: 'b.o.timeOfPeriapsisPassage',
      # Time of Periapsis Passage [body id]
      # Plotable

      trueAnomaly: 'b.o.trueAnomaly',
      # True Anomaly [body id]
      # Plotable

      phaseAngle: 'b.o.phaseAngle',
      # Phase Angle [body id]
      # Plotable

      resource: 'r.resource',
      # Resource Information [string resource type]
      # Not Plotable

      resourceCurrent: 'r.resourceCurrent',
      # Resource Information for Current Stage [string resource type]
      # Not Plotable

      resourceCurrentMax: 'r.resourceCurrentMax',
      # Max Resource Information for Current Stage [string resource type]
      # Not Plotable

      resourceMax: 'r.resourceMax',
      # Max Resource Information [string resource type]
      # Not Plotable

      api: 'a.api',
      # API Listing
      # Not Plotable

      ip: 'a.ip',
      # IP Addresses
      # Not Plotable

      apiSubSet: 'a.apiSubSet',
      # Subset of the API Listing [string api1, string api2, ... , string apiN]
      # Not Plotable

      version: 'a.version',
      # Telemachus Version
      # Plotable

      heading2: 'n.heading2',
      # Heading
      # Plotable

      pitch2: 'n.pitch2',
      # Pitch
      # Plotable

      roll2: 'n.roll2',
      # Roll
      # Plotable

      rawheading2: 'n.rawheading2',
      # Raw Heading
      # Plotable

      rawpitch2: 'n.rawpitch2',
      # Raw Pitch
      # Plotable

      rawroll2: 'n.rawroll2',
      # Raw Roll
      # Plotable

      heading: 'n.heading',
      # Heading calculated using the position of the vessels root part
      # Plotable

      pitch: 'n.pitch',
      # Pitch calculated using the position of the vessels root part
      # Plotable

      roll: 'n.roll',
      # Roll calculated using the position of the vessels root part
      # Plotable

      rawheading: 'n.rawheading',
      # Raw Heading calculated using the position of the vessels root part
      # Plotable

      rawpitch: 'n.rawpitch',
      # Raw Pitch calculated using the position of the vessels root part
      # Plotable

      rawroll: 'n.rawroll',
      # Raw Roll calculated using the position of the vessels root part
      # Plotable

      toggleMapView: 'm.toggleMapView',
      #  Toggle Map View
      # Not Plotable

      enterMapView: 'm.enterMapView',
      #  Enter Map View
      # Not Plotable

      exitMapView: 'm.exitMapView',
      #  Exit Map View
      # Not Plotable

      ax: 'dock.ax',
      # Docking x Angle
      # Plotable

      ay: 'dock.ay',
      # Relative Pitch Angle
      # Plotable

      az: 'dock.az',
      # Docking z Angle
      # Plotable

      x: 'dock.x',
      # Target x Distance
      # Plotable

      y: 'dock.y',
      # Target y Distance
      # Plotable
    }.freeze
  end
end
