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

      smart_ass_off: 'mj.smartassoff',
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

    }.freeze
  end
end
