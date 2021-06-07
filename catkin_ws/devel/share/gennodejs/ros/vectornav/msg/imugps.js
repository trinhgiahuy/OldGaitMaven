// Auto-generated. Do not edit!

// (in-package vectornav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class imugps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.orientation = null;
      this.angular_velocity = null;
      this.LLA = null;
      this.nedvel = null;
      this.linear_acceleration = null;
      this.dtime = null;
      this.dtheta = null;
      this.dvel = null;
      this.fix = null;
      this.gpsLLA = null;
      this.gpsnedvel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('LLA')) {
        this.LLA = initObj.LLA
      }
      else {
        this.LLA = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('nedvel')) {
        this.nedvel = initObj.nedvel
      }
      else {
        this.nedvel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('dtime')) {
        this.dtime = initObj.dtime
      }
      else {
        this.dtime = 0.0;
      }
      if (initObj.hasOwnProperty('dtheta')) {
        this.dtheta = initObj.dtheta
      }
      else {
        this.dtheta = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('dvel')) {
        this.dvel = initObj.dvel
      }
      else {
        this.dvel = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('fix')) {
        this.fix = initObj.fix
      }
      else {
        this.fix = 0;
      }
      if (initObj.hasOwnProperty('gpsLLA')) {
        this.gpsLLA = initObj.gpsLLA
      }
      else {
        this.gpsLLA = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gpsnedvel')) {
        this.gpsnedvel = initObj.gpsnedvel
      }
      else {
        this.gpsnedvel = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imugps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint64(obj.time, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [LLA]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.LLA, buffer, bufferOffset);
    // Serialize message field [nedvel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.nedvel, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [dtime]
    bufferOffset = _serializer.float32(obj.dtime, buffer, bufferOffset);
    // Check that the constant length array field [dtheta] has the right length
    if (obj.dtheta.length !== 3) {
      throw new Error('Unable to serialize array field dtheta - length must be 3')
    }
    // Serialize message field [dtheta]
    bufferOffset = _arraySerializer.float32(obj.dtheta, buffer, bufferOffset, 3);
    // Check that the constant length array field [dvel] has the right length
    if (obj.dvel.length !== 3) {
      throw new Error('Unable to serialize array field dvel - length must be 3')
    }
    // Serialize message field [dvel]
    bufferOffset = _arraySerializer.float32(obj.dvel, buffer, bufferOffset, 3);
    // Serialize message field [fix]
    bufferOffset = _serializer.uint8(obj.fix, buffer, bufferOffset);
    // Serialize message field [gpsLLA]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gpsLLA, buffer, bufferOffset);
    // Serialize message field [gpsnedvel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gpsnedvel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imugps
    let len;
    let data = new imugps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [LLA]
    data.LLA = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [nedvel]
    data.nedvel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dtime]
    data.dtime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dtheta]
    data.dtheta = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [dvel]
    data.dvel = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [fix]
    data.fix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpsLLA]
    data.gpsLLA = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsnedvel]
    data.gpsnedvel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 213;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vectornav/imugps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bcb092f31dba2c7e0aa5e8d136d895c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header       header
    uint64               time
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 angular_velocity
    geometry_msgs/Vector3 LLA
    geometry_msgs/Vector3 nedvel
    geometry_msgs/Vector3 linear_acceleration
    float32               dtime
    float32[3]            dtheta
    float32[3]            dvel
    uint8                 fix
    geometry_msgs/Vector3 gpsLLA
    geometry_msgs/Vector3 gpsnedvel
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imugps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.LLA !== undefined) {
      resolved.LLA = geometry_msgs.msg.Vector3.Resolve(msg.LLA)
    }
    else {
      resolved.LLA = new geometry_msgs.msg.Vector3()
    }

    if (msg.nedvel !== undefined) {
      resolved.nedvel = geometry_msgs.msg.Vector3.Resolve(msg.nedvel)
    }
    else {
      resolved.nedvel = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.dtime !== undefined) {
      resolved.dtime = msg.dtime;
    }
    else {
      resolved.dtime = 0.0
    }

    if (msg.dtheta !== undefined) {
      resolved.dtheta = msg.dtheta;
    }
    else {
      resolved.dtheta = new Array(3).fill(0)
    }

    if (msg.dvel !== undefined) {
      resolved.dvel = msg.dvel;
    }
    else {
      resolved.dvel = new Array(3).fill(0)
    }

    if (msg.fix !== undefined) {
      resolved.fix = msg.fix;
    }
    else {
      resolved.fix = 0
    }

    if (msg.gpsLLA !== undefined) {
      resolved.gpsLLA = geometry_msgs.msg.Vector3.Resolve(msg.gpsLLA)
    }
    else {
      resolved.gpsLLA = new geometry_msgs.msg.Vector3()
    }

    if (msg.gpsnedvel !== undefined) {
      resolved.gpsnedvel = geometry_msgs.msg.Vector3.Resolve(msg.gpsnedvel)
    }
    else {
      resolved.gpsnedvel = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = imugps;
