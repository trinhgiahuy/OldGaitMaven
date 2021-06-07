// Generated by gencpp from file ublox_msgs/NavDGPS_SV.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_NAVDGPS_SV_H
#define UBLOX_MSGS_MESSAGE_NAVDGPS_SV_H


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
struct NavDGPS_SV_
{
  typedef NavDGPS_SV_<ContainerAllocator> Type;

  NavDGPS_SV_()
    : svid(0)
    , flags(0)
    , ageC(0)
    , prc(0.0)
    , prrc(0.0)  {
    }
  NavDGPS_SV_(const ContainerAllocator& _alloc)
    : svid(0)
    , flags(0)
    , ageC(0)
    , prc(0.0)
    , prrc(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _svid_type;
  _svid_type svid;

   typedef uint8_t _flags_type;
  _flags_type flags;

   typedef uint16_t _ageC_type;
  _ageC_type ageC;

   typedef float _prc_type;
  _prc_type prc;

   typedef float _prrc_type;
  _prrc_type prrc;


    enum { FLAGS_CHANNEL_MASK = 15u };
     enum { FLAGS_DGPS = 16u };
 

  typedef boost::shared_ptr< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> const> ConstPtr;

}; // struct NavDGPS_SV_

typedef ::ublox_msgs::NavDGPS_SV_<std::allocator<void> > NavDGPS_SV;

typedef boost::shared_ptr< ::ublox_msgs::NavDGPS_SV > NavDGPS_SVPtr;
typedef boost::shared_ptr< ::ublox_msgs::NavDGPS_SV const> NavDGPS_SVConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c16a60aa23db6f4f1a80cf6720b95063";
  }

  static const char* value(const ::ublox_msgs::NavDGPS_SV_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc16a60aa23db6f4fULL;
  static const uint64_t static_value2 = 0x1a80cf6720b95063ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/NavDGPS_SV";
  }

  static const char* value(const ::ublox_msgs::NavDGPS_SV_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# see message NavDGPS\n\
\n\
uint8 svid              # Satellite ID\n\
\n\
uint8 flags             # Bitmask / Channel Number and Usage:\n\
uint8 FLAGS_CHANNEL_MASK = 15   # Bitmask for channel number, range 0..15\n\
                                # Channel numbers > 15 marked as 15\n\
uint8 FLAGS_DGPS = 16           # DGPS Used for this SV\n\
\n\
uint16 ageC             # Age of latest correction data [ms]\n\
float32 prc             # Pseudo Range Correction [m]\n\
float32 prrc            # Pseudo Range Rate Correction [m/s]\n\
\n\
";
  }

  static const char* value(const ::ublox_msgs::NavDGPS_SV_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.svid);
      stream.next(m.flags);
      stream.next(m.ageC);
      stream.next(m.prc);
      stream.next(m.prrc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavDGPS_SV_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::NavDGPS_SV_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::NavDGPS_SV_<ContainerAllocator>& v)
  {
    s << indent << "svid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.svid);
    s << indent << "flags: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flags);
    s << indent << "ageC: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ageC);
    s << indent << "prc: ";
    Printer<float>::stream(s, indent + "  ", v.prc);
    s << indent << "prrc: ";
    Printer<float>::stream(s, indent + "  ", v.prrc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_NAVDGPS_SV_H
