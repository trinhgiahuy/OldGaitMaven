// Generated by gencpp from file vectornav/imugps.msg
// DO NOT EDIT!


#ifndef VECTORNAV_MESSAGE_IMUGPS_H
#define VECTORNAV_MESSAGE_IMUGPS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace vectornav
{
template <class ContainerAllocator>
struct imugps_
{
  typedef imugps_<ContainerAllocator> Type;

  imugps_()
    : header()
    , time(0)
    , orientation()
    , angular_velocity()
    , LLA()
    , nedvel()
    , linear_acceleration()
    , dtime(0.0)
    , dtheta()
    , dvel()
    , fix(0)
    , gpsLLA()
    , gpsnedvel()  {
      dtheta.assign(0.0);

      dvel.assign(0.0);
  }
  imugps_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time(0)
    , orientation(_alloc)
    , angular_velocity(_alloc)
    , LLA(_alloc)
    , nedvel(_alloc)
    , linear_acceleration(_alloc)
    , dtime(0.0)
    , dtheta()
    , dvel()
    , fix(0)
    , gpsLLA(_alloc)
    , gpsnedvel(_alloc)  {
  (void)_alloc;
      dtheta.assign(0.0);

      dvel.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint64_t _time_type;
  _time_type time;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _LLA_type;
  _LLA_type LLA;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _nedvel_type;
  _nedvel_type nedvel;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _linear_acceleration_type;
  _linear_acceleration_type linear_acceleration;

   typedef float _dtime_type;
  _dtime_type dtime;

   typedef boost::array<float, 3>  _dtheta_type;
  _dtheta_type dtheta;

   typedef boost::array<float, 3>  _dvel_type;
  _dvel_type dvel;

   typedef uint8_t _fix_type;
  _fix_type fix;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _gpsLLA_type;
  _gpsLLA_type gpsLLA;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _gpsnedvel_type;
  _gpsnedvel_type gpsnedvel;




  typedef boost::shared_ptr< ::vectornav::imugps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vectornav::imugps_<ContainerAllocator> const> ConstPtr;

}; // struct imugps_

typedef ::vectornav::imugps_<std::allocator<void> > imugps;

typedef boost::shared_ptr< ::vectornav::imugps > imugpsPtr;
typedef boost::shared_ptr< ::vectornav::imugps const> imugpsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vectornav::imugps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vectornav::imugps_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vectornav

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'vectornav': ['/home/pi/catkin_ws/src/vectornav/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vectornav::imugps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vectornav::imugps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vectornav::imugps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vectornav::imugps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vectornav::imugps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vectornav::imugps_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vectornav::imugps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0bcb092f31dba2c7e0aa5e8d136d895c";
  }

  static const char* value(const ::vectornav::imugps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0bcb092f31dba2c7ULL;
  static const uint64_t static_value2 = 0xe0aa5e8d136d895cULL;
};

template<class ContainerAllocator>
struct DataType< ::vectornav::imugps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vectornav/imugps";
  }

  static const char* value(const ::vectornav::imugps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vectornav::imugps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header       header\n\
uint64               time\n\
geometry_msgs/Quaternion orientation\n\
geometry_msgs/Vector3 angular_velocity\n\
geometry_msgs/Vector3 LLA\n\
geometry_msgs/Vector3 nedvel\n\
geometry_msgs/Vector3 linear_acceleration\n\
float32               dtime\n\
float32[3]            dtheta\n\
float32[3]            dvel\n\
uint8                 fix\n\
geometry_msgs/Vector3 gpsLLA\n\
geometry_msgs/Vector3 gpsnedvel\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::vectornav::imugps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vectornav::imugps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time);
      stream.next(m.orientation);
      stream.next(m.angular_velocity);
      stream.next(m.LLA);
      stream.next(m.nedvel);
      stream.next(m.linear_acceleration);
      stream.next(m.dtime);
      stream.next(m.dtheta);
      stream.next(m.dvel);
      stream.next(m.fix);
      stream.next(m.gpsLLA);
      stream.next(m.gpsnedvel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct imugps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vectornav::imugps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vectornav::imugps_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.time);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "angular_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "LLA: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.LLA);
    s << indent << "nedvel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.nedvel);
    s << indent << "linear_acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.linear_acceleration);
    s << indent << "dtime: ";
    Printer<float>::stream(s, indent + "  ", v.dtime);
    s << indent << "dtheta[]" << std::endl;
    for (size_t i = 0; i < v.dtheta.size(); ++i)
    {
      s << indent << "  dtheta[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.dtheta[i]);
    }
    s << indent << "dvel[]" << std::endl;
    for (size_t i = 0; i < v.dvel.size(); ++i)
    {
      s << indent << "  dvel[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.dvel[i]);
    }
    s << indent << "fix: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fix);
    s << indent << "gpsLLA: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.gpsLLA);
    s << indent << "gpsnedvel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.gpsnedvel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTORNAV_MESSAGE_IMUGPS_H
