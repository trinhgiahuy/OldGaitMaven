// Auto-generated. Do not edit!

// (in-package vectornav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class satraw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sys = null;
      this.svId = null;
      this.freq = null;
      this.chan = null;
      this.slot = null;
      this.cno = null;
      this.flags = null;
      this.pr = null;
      this.cp = null;
      this.dp = null;
    }
    else {
      if (initObj.hasOwnProperty('sys')) {
        this.sys = initObj.sys
      }
      else {
        this.sys = 0;
      }
      if (initObj.hasOwnProperty('svId')) {
        this.svId = initObj.svId
      }
      else {
        this.svId = 0;
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0;
      }
      if (initObj.hasOwnProperty('chan')) {
        this.chan = initObj.chan
      }
      else {
        this.chan = 0;
      }
      if (initObj.hasOwnProperty('slot')) {
        this.slot = initObj.slot
      }
      else {
        this.slot = 0;
      }
      if (initObj.hasOwnProperty('cno')) {
        this.cno = initObj.cno
      }
      else {
        this.cno = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('pr')) {
        this.pr = initObj.pr
      }
      else {
        this.pr = 0.0;
      }
      if (initObj.hasOwnProperty('cp')) {
        this.cp = initObj.cp
      }
      else {
        this.cp = 0.0;
      }
      if (initObj.hasOwnProperty('dp')) {
        this.dp = initObj.dp
      }
      else {
        this.dp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type satraw
    // Serialize message field [sys]
    bufferOffset = _serializer.uint8(obj.sys, buffer, bufferOffset);
    // Serialize message field [svId]
    bufferOffset = _serializer.uint8(obj.svId, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.uint8(obj.freq, buffer, bufferOffset);
    // Serialize message field [chan]
    bufferOffset = _serializer.uint8(obj.chan, buffer, bufferOffset);
    // Serialize message field [slot]
    bufferOffset = _serializer.int8(obj.slot, buffer, bufferOffset);
    // Serialize message field [cno]
    bufferOffset = _serializer.uint8(obj.cno, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [pr]
    bufferOffset = _serializer.float64(obj.pr, buffer, bufferOffset);
    // Serialize message field [cp]
    bufferOffset = _serializer.float64(obj.cp, buffer, bufferOffset);
    // Serialize message field [dp]
    bufferOffset = _serializer.float32(obj.dp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type satraw
    let len;
    let data = new satraw(null);
    // Deserialize message field [sys]
    data.sys = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svId]
    data.svId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [chan]
    data.chan = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [slot]
    data.slot = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cno]
    data.cno = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pr]
    data.pr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cp]
    data.cp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dp]
    data.dp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vectornav/satraw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edc0770899cab3f86653d0962a754099';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new satraw(null);
    if (msg.sys !== undefined) {
      resolved.sys = msg.sys;
    }
    else {
      resolved.sys = 0
    }

    if (msg.svId !== undefined) {
      resolved.svId = msg.svId;
    }
    else {
      resolved.svId = 0
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0
    }

    if (msg.chan !== undefined) {
      resolved.chan = msg.chan;
    }
    else {
      resolved.chan = 0
    }

    if (msg.slot !== undefined) {
      resolved.slot = msg.slot;
    }
    else {
      resolved.slot = 0
    }

    if (msg.cno !== undefined) {
      resolved.cno = msg.cno;
    }
    else {
      resolved.cno = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.pr !== undefined) {
      resolved.pr = msg.pr;
    }
    else {
      resolved.pr = 0.0
    }

    if (msg.cp !== undefined) {
      resolved.cp = msg.cp;
    }
    else {
      resolved.cp = 0.0
    }

    if (msg.dp !== undefined) {
      resolved.dp = msg.dp;
    }
    else {
      resolved.dp = 0.0
    }

    return resolved;
    }
};

module.exports = satraw;
