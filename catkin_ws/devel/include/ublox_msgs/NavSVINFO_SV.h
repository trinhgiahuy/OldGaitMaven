// Generated by gencpp from file ublox_msgs/NavSVINFO_SV.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_NAVSVINFO_SV_H
#define UBLOX_MSGS_MESSAGE_NAVSVINFO_SV_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ublox_msgs
{
template <class ContainerAllocator>
struct NavSVINFO_SV_
{
  typedef NavSVINFO_SV_<ContainerAllocator> Type;

  NavSVINFO_SV_()
    : chn(0)
    , svid(0)
    , flags(0)
    , quality(0)
    , cno(0)
    , elev(0)
    , azim(0)
    , prRes(0)  {
    }
  NavSVINFO_SV_(const ContainerAllocator& _alloc)
    : chn(0)
    , svid(0)
    , flags(0)
    , quality(0)
    , cno(0)
    , elev(0)
    , azim(0)
    , prRes(0)  {
  (void)_alloc;
    }



   typedef uint8_t _chn_type;
  _chn_type chn;

   typedef uint8_t _svid_type;
  _svid_type svid;

   typedef uint8_t _flags_type;
  _flags_type flags;

   typedef uint8_t _quality_type;
  _quality_type quality;

   typedef uint8_t _cno_type;
  _cno_type cno;

   typedef int8_t _elev_type;
  _elev_type elev;

   typedef int16_t _azim_type;
  _azim_type azim;

   typedef int32_t _prRes_type;
  _prRes_type prRes;


    enum { FLAGS_SV_USED = 1u };
     enum { FLAGS_DIFF_CORR = 2u };
     enum { FLAGS_ORBIT_AVAIL = 4u };
     enum { FLAGS_ORBIT_EPH = 8u };
     enum { FLAGS_UNHEALTHY = 16u };
     enum { FLAGS_ORBIT_ALM = 32u };
     enum { FLAGS_ORBIT_AOP = 64u };
     enum { FLAGS_SMOOTHED = 128u };
     enum { QUALITY_IDLE = 0u };
     enum { QUALITY_SEARCHING = 1u };
     enum { QUALITY_ACQUIRED = 2u };
     enum { QUALITY_DETECTED = 3u };
     enum { QUALITY_CODE_LOCK = 4u };
     enum { QUALITY_CODE_AND_CARRIER_LOCKED1 = 5u };
     enum { QUALITY_CODE_AND_CARRIER_LOCKED2 = 6u };
     enum { QUALITY_CODE_AND_CARRIER_LOCKED3 = 7u };
 

  typedef boost::shared_ptr< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> const> ConstPtr;

}; // struct NavSVINFO_SV_

typedef ::ublox_msgs::NavSVINFO_SV_<std::allocator<void> > NavSVINFO_SV;

typedef boost::shared_ptr< ::ublox_msgs::NavSVINFO_SV > NavSVINFO_SVPtr;
typedef boost::shared_ptr< ::ublox_msgs::NavSVINFO_SV const> NavSVINFO_SVConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ublox_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ublox_msgs': ['/home/pi/catkin_ws/src/ublox/ublox_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd3d8150f431e87f504da9aafff163a1";
  }

  static const char* value(const ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd3d8150f431e87fULL;
  static const uint64_t static_value2 = 0x504da9aafff163a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/NavSVINFO_SV";
  }

  static const char* value(const ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# see message NavSVINFO\n\
#\n\
\n\
uint8 chn             # Channel number, 255 for SVs not assigned to a channel\n\
uint8 svid            # Satellite ID\n\
\n\
uint8 flags           # Bitmask\n\
uint8 FLAGS_SV_USED = 1                     # SV is used for navigation\n\
uint8 FLAGS_DIFF_CORR = 2                   # Differential correction data \n\
                                            # is available for this SV\n\
uint8 FLAGS_ORBIT_AVAIL = 4                 # Orbit information is available for \n\
                                            # this SV (Ephemeris or Almanach)\n\
uint8 FLAGS_ORBIT_EPH = 8                   # Orbit information is Ephemeris\n\
uint8 FLAGS_UNHEALTHY = 16                  # SV is unhealthy / shall not be \n\
                                            # used\n\
uint8 FLAGS_ORBIT_ALM = 32                  # Orbit information is Almanac Plus\n\
uint8 FLAGS_ORBIT_AOP = 64                  # Orbit information is AssistNow \n\
                                            # Autonomous\n\
uint8 FLAGS_SMOOTHED = 128                  # Carrier smoothed pseudorange used\n\
\n\
uint8 quality         # Bitfield\n\
# qualityInd: Signal Quality indicator (range 0..7). The following list shows \n\
# the meaning of the different QI values:\n\
# Note: Since IMES signals are not time synchronized, a channel tracking an IMES\n\
# signal can never reach a quality indicator value of higher than 3.\n\
uint8 QUALITY_IDLE = 0                      # This channel is idle\n\
uint8 QUALITY_SEARCHING = 1                 # Channel is searching\n\
uint8 QUALITY_ACQUIRED = 2                   # Signal acquired\n\
uint8 QUALITY_DETECTED = 3                  # Signal detected but unusable\n\
uint8 QUALITY_CODE_LOCK = 4                 # Code Lock on Signal\n\
uint8 QUALITY_CODE_AND_CARRIER_LOCKED1 = 5  # Code and Carrier locked \n\
                                            # and time synchronized\n\
uint8 QUALITY_CODE_AND_CARRIER_LOCKED2 = 6  # Code and Carrier locked \n\
                                            # and time synchronized\n\
uint8 QUALITY_CODE_AND_CARRIER_LOCKED3 = 7  # Code and Carrier locked \n\
                                            # and time synchronized\n\
\n\
uint8 cno             # Carrier to Noise Ratio (Signal Strength) [dBHz]\n\
int8 elev             # Elevation in integer degrees [deg]\n\
int16 azim            # Azimuth in integer degrees [deg]\n\
int32 prRes           # Pseudo range residual in centimetres [cm]\n\
";
  }

  static const char* value(const ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.chn);
      stream.next(m.svid);
      stream.next(m.flags);
      stream.next(m.quality);
      stream.next(m.cno);
      stream.next(m.elev);
      stream.next(m.azim);
      stream.next(m.prRes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavSVINFO_SV_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::NavSVINFO_SV_<ContainerAllocator>& v)
  {
    s << indent << "chn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.chn);
    s << indent << "svid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.svid);
    s << indent << "flags: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flags);
    s << indent << "quality: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.quality);
    s << indent << "cno: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cno);
    s << indent << "elev: ";
    Printer<int8_t>::stream(s, indent + "  ", v.elev);
    s << indent << "azim: ";
    Printer<int16_t>::stream(s, indent + "  ", v.azim);
    s << indent << "prRes: ";
    Printer<int32_t>::stream(s, indent + "  ", v.prRes);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_NAVSVINFO_SV_H
