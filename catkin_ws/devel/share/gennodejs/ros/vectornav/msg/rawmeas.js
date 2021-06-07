// Auto-generated. Do not edit!

// (in-package vectornav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let satraw = require('./satraw.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class rawmeas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tow = null;
      this.week = null;
      this.numSats = null;
      this.resv = null;
      this.satraws = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0.0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('numSats')) {
        this.numSats = initObj.numSats
      }
      else {
        this.numSats = 0;
      }
      if (initObj.hasOwnProperty('resv')) {
        this.resv = initObj.resv
      }
      else {
        this.resv = 0;
      }
      if (initObj.hasOwnProperty('satraws')) {
        this.satraws = initObj.satraws
      }
      else {
        this.satraws = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rawmeas
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.float64(obj.tow, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [numSats]
    bufferOffset = _serializer.uint8(obj.numSats, buffer, bufferOffset);
    // Serialize message field [resv]
    bufferOffset = _serializer.uint8(obj.resv, buffer, bufferOffset);
    // Serialize message field [satraws]
    // Serialize the length for message field [satraws]
    bufferOffset = _serializer.uint32(obj.satraws.length, buffer, bufferOffset);
    obj.satraws.forEach((val) => {
      bufferOffset = satraw.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rawmeas
    let len;
    let data = new rawmeas(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [numSats]
    data.numSats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [resv]
    data.resv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [satraws]
    // Deserialize array length for message field [satraws]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.satraws = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.satraws[i] = satraw.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 28 * object.satraws.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vectornav/rawmeas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea95944c129482cc512d818090e6d878';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header       header
    float64               tow
    uint16                week
    uint8                 numSats
    uint8                 resv
    satraw[]              satraws
    
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
    MSG: vectornav/satraw
    uint8                sys
    uint8                svId
    uint8                freq
    uint8                chan
    int8                 slot
    uint8                cno
    uint16               flags
    float64              pr
    float64              cp
    float32              dp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rawmeas(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0.0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.numSats !== undefined) {
      resolved.numSats = msg.numSats;
    }
    else {
      resolved.numSats = 0
    }

    if (msg.resv !== undefined) {
      resolved.resv = msg.resv;
    }
    else {
      resolved.resv = 0
    }

    if (msg.satraws !== undefined) {
      resolved.satraws = new Array(msg.satraws.length);
      for (let i = 0; i < resolved.satraws.length; ++i) {
        resolved.satraws[i] = satraw.Resolve(msg.satraws[i]);
      }
    }
    else {
      resolved.satraws = []
    }

    return resolved;
    }
};

module.exports = rawmeas;
