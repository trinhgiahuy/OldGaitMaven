// Generated by gencpp from file ublox_msgs/NavTIMEUTC.msg
// DO NOT EDIT!


#ifndef UBLOX_MSGS_MESSAGE_NAVTIMEUTC_H
#define UBLOX_MSGS_MESSAGE_NAVTIMEUTC_H


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
struct NavTIMEUTC_
{
  typedef NavTIMEUTC_<ContainerAllocator> Type;

  NavTIMEUTC_()
    : iTOW(0)
    , tAcc(0)
    , nano(0)
    , year(0)
    , month(0)
    , day(0)
    , hour(0)
    , min(0)
    , sec(0)
    , valid(0)  {
    }
  NavTIMEUTC_(const ContainerAllocator& _alloc)
    : iTOW(0)
    , tAcc(0)
    , nano(0)
    , year(0)
    , month(0)
    , day(0)
    , hour(0)
    , min(0)
    , sec(0)
    , valid(0)  {
  (void)_alloc;
    }



   typedef uint32_t _iTOW_type;
  _iTOW_type iTOW;

   typedef uint32_t _tAcc_type;
  _tAcc_type tAcc;

   typedef int32_t _nano_type;
  _nano_type nano;

   typedef uint16_t _year_type;
  _year_type year;

   typedef uint8_t _month_type;
  _month_type month;

   typedef uint8_t _day_type;
  _day_type day;

   typedef uint8_t _hour_type;
  _hour_type hour;

   typedef uint8_t _min_type;
  _min_type min;

   typedef uint8_t _sec_type;
  _sec_type sec;

   typedef uint8_t _valid_type;
  _valid_type valid;


    enum { CLASS_ID = 1u };
     enum { MESSAGE_ID = 33u };
     enum { VALID_TOW = 1u };
     enum { VALID_WKN = 2u };
     enum { VALID_UTC = 4u };
     enum { VALID_UTC_STANDARD_MASK = 240u };
     enum { UTC_STANDARD_NOT_AVAILABLE = 0u };
     enum { UTC_STANDARD_CRL = 16u };
     enum { UTC_STANDARD_NIST = 32u };
     enum { UTC_STANDARD_USNO = 48u };
     enum { UTC_STANDARD_BIPM = 64u };
     enum { UTC_STANDARD_EL = 80u };
     enum { UTC_STANDARD_SU = 96u };
     enum { UTC_STANDARD_NTSC = 112u };
     enum { UTC_STANDARD_UNKNOWN = 240u };
 

  typedef boost::shared_ptr< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> const> ConstPtr;

}; // struct NavTIMEUTC_

typedef ::ublox_msgs::NavTIMEUTC_<std::allocator<void> > NavTIMEUTC;

typedef boost::shared_ptr< ::ublox_msgs::NavTIMEUTC > NavTIMEUTCPtr;
typedef boost::shared_ptr< ::ublox_msgs::NavTIMEUTC const> NavTIMEUTCConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd39089655ebb13ff8d01cbe3a087db1";
  }

  static const char* value(const ::ublox_msgs::NavTIMEUTC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd39089655ebb13fULL;
  static const uint64_t static_value2 = 0xf8d01cbe3a087db1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ublox_msgs/NavTIMEUTC";
  }

  static const char* value(const ::ublox_msgs::NavTIMEUTC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# NAV-TIMEUTC (0x01 0x21)\n\
# UTC Time Solution\n\
#\n\
\n\
uint8 CLASS_ID = 1\n\
uint8 MESSAGE_ID = 33\n\
\n\
uint32 iTOW             # GPS Millisecond time of week [ms]\n\
\n\
uint32 tAcc             # Time Accuracy Estimate [ns]\n\
int32 nano              # Fraction of second, range -1e9 .. 1e9 (UTC) [ns]\n\
uint16 year             # Year, range 1999..2099 (UTC) [y]\n\
uint8 month             # Month, range 1..12 (UTC) [month]\n\
uint8 day               # Day of Month, range 1..31 (UTC) [d]\n\
uint8 hour              # Hour of Day, range 0..23 (UTC) [h]\n\
uint8 min               # Minute of Hour, range 0..59 (UTC) [min]\n\
uint8 sec               # Seconds of Minute, range 0..60 (UTC) [s] (60 for \n\
                        # leap second)\n\
\n\
uint8 valid             # Validity Flags\n\
uint8 VALID_TOW = 1         # Valid Time of Week\n\
uint8 VALID_WKN = 2         # Valid Week Number\n\
uint8 VALID_UTC = 4         # Valid Leap Seconds, i.e. Leap Seconds already known\n\
uint8 VALID_UTC_STANDARD_MASK = 240  # UTC standard Identifier Bit mask:\n\
uint8 UTC_STANDARD_NOT_AVAILABLE = 0    # Information not available\n\
uint8 UTC_STANDARD_CRL = 16             # Communications Research Labratory\n\
uint8 UTC_STANDARD_NIST = 32            # National Institute of Standards and \n\
                                        # Technology (NIST)\n\
uint8 UTC_STANDARD_USNO = 48            # U.S. Naval Observatory (USNO)\n\
uint8 UTC_STANDARD_BIPM = 64            # International Bureau of Weights and \n\
                                        # Measures (BIPM)\n\
uint8 UTC_STANDARD_EL = 80              # European Laboratory (tbd)\n\
uint8 UTC_STANDARD_SU = 96              # Former Soviet Union (SU)\n\
uint8 UTC_STANDARD_NTSC = 112           # National Time Service Center, China\n\
uint8 UTC_STANDARD_UNKNOWN = 240\n\
";
  }

  static const char* value(const ::ublox_msgs::NavTIMEUTC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.iTOW);
      stream.next(m.tAcc);
      stream.next(m.nano);
      stream.next(m.year);
      stream.next(m.month);
      stream.next(m.day);
      stream.next(m.hour);
      stream.next(m.min);
      stream.next(m.sec);
      stream.next(m.valid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavTIMEUTC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ublox_msgs::NavTIMEUTC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ublox_msgs::NavTIMEUTC_<ContainerAllocator>& v)
  {
    s << indent << "iTOW: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.iTOW);
    s << indent << "tAcc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.tAcc);
    s << indent << "nano: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nano);
    s << indent << "year: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.year);
    s << indent << "month: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.month);
    s << indent << "day: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.day);
    s << indent << "hour: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hour);
    s << indent << "min: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.min);
    s << indent << "sec: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sec);
    s << indent << "valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.valid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UBLOX_MSGS_MESSAGE_NAVTIMEUTC_H