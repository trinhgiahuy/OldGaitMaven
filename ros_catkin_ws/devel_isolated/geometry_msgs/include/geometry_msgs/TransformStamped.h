// Generated by gencpp from file geometry_msgs/TransformStamped.msg
// DO NOT EDIT!


#ifndef GEOMETRY_MSGS_MESSAGE_TRANSFORMSTAMPED_H
#define GEOMETRY_MSGS_MESSAGE_TRANSFORMSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Transform.h>

namespace geometry_msgs
{
template <class ContainerAllocator>
struct TransformStamped_
{
  typedef TransformStamped_<ContainerAllocator> Type;

  TransformStamped_()
    : header()
    , child_frame_id()
    , transform()  {
    }
  TransformStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , child_frame_id(_alloc)
    , transform(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _child_frame_id_type;
  _child_frame_id_type child_frame_id;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _transform_type;
  _transform_type transform;




  typedef boost::shared_ptr< ::geometry_msgs::TransformStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geometry_msgs::TransformStamped_<ContainerAllocator> const> ConstPtr;

}; // struct TransformStamped_

typedef ::geometry_msgs::TransformStamped_<std::allocator<void> > TransformStamped;

typedef boost::shared_ptr< ::geometry_msgs::TransformStamped > TransformStampedPtr;
typedef boost::shared_ptr< ::geometry_msgs::TransformStamped const> TransformStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geometry_msgs::TransformStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geometry_msgs::TransformStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geometry_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/home/pi/ros_catkin_ws/src/common_msgs/geometry_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geometry_msgs::TransformStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geometry_msgs::TransformStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geometry_msgs::TransformStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5764a33bfeb3588febc2682852579b0";
  }

  static const char* value(const ::geometry_msgs::TransformStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5764a33bfeb3588ULL;
  static const uint64_t static_value2 = 0xfebc2682852579b0ULL;
};

template<class ContainerAllocator>
struct DataType< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/TransformStamped";
  }

  static const char* value(const ::geometry_msgs::TransformStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This expresses a transform from coordinate frame header.frame_id\n\
# to the coordinate frame child_frame_id\n\
#\n\
# This message is mostly used by the \n\
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. \n\
# See its documentation for more information.\n\
\n\
Header header\n\
string child_frame_id # the frame id of the child frame\n\
Transform transform\n\
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
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
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
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::geometry_msgs::TransformStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.child_frame_id);
      stream.next(m.transform);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geometry_msgs::TransformStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geometry_msgs::TransformStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "child_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.child_frame_id);
    s << indent << "transform: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.transform);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOMETRY_MSGS_MESSAGE_TRANSFORMSTAMPED_H
