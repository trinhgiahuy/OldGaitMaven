// Generated by gencpp from file diagnostic_msgs/SelfTestRequest.msg
// DO NOT EDIT!


#ifndef DIAGNOSTIC_MSGS_MESSAGE_SELFTESTREQUEST_H
#define DIAGNOSTIC_MSGS_MESSAGE_SELFTESTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace diagnostic_msgs
{
template <class ContainerAllocator>
struct SelfTestRequest_
{
  typedef SelfTestRequest_<ContainerAllocator> Type;

  SelfTestRequest_()
    {
    }
  SelfTestRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SelfTestRequest_

typedef ::diagnostic_msgs::SelfTestRequest_<std::allocator<void> > SelfTestRequest;

typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestRequest > SelfTestRequestPtr;
typedef boost::shared_ptr< ::diagnostic_msgs::SelfTestRequest const> SelfTestRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace diagnostic_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/home/pi/ros_catkin_ws/src/common_msgs/diagnostic_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "diagnostic_msgs/SelfTestRequest";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SelfTestRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::diagnostic_msgs::SelfTestRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DIAGNOSTIC_MSGS_MESSAGE_SELFTESTREQUEST_H
