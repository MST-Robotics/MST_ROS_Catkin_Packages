/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/enterprise/enterprise_ws/src/mst_midg/msg/IMU.msg
 *
 */


#ifndef MST_MIDG_MESSAGE_IMU_H
#define MST_MIDG_MESSAGE_IMU_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mst_midg
{
template <class ContainerAllocator>
struct IMU_
{
  typedef IMU_<ContainerAllocator> Type;

  IMU_()
    : latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , heading(0.0)
    , speed(0.0)
    , angular_rate(0.0)
    , gps_time(0.0)
    , position_valid(false)
    , heading_valid(false)
    , speed_valid(false)
    , angular_rate_valid(false)
    , position_accuracy(0.0)  {
    }
  IMU_(const ContainerAllocator& _alloc)
    : latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , heading(0.0)
    , speed(0.0)
    , angular_rate(0.0)
    , gps_time(0.0)
    , position_valid(false)
    , heading_valid(false)
    , speed_valid(false)
    , angular_rate_valid(false)
    , position_accuracy(0.0)  {
    }



   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _altitude_type;
  _altitude_type altitude;

   typedef double _heading_type;
  _heading_type heading;

   typedef double _speed_type;
  _speed_type speed;

   typedef double _angular_rate_type;
  _angular_rate_type angular_rate;

   typedef double _gps_time_type;
  _gps_time_type gps_time;

   typedef uint8_t _position_valid_type;
  _position_valid_type position_valid;

   typedef uint8_t _heading_valid_type;
  _heading_valid_type heading_valid;

   typedef uint8_t _speed_valid_type;
  _speed_valid_type speed_valid;

   typedef uint8_t _angular_rate_valid_type;
  _angular_rate_valid_type angular_rate_valid;

   typedef double _position_accuracy_type;
  _position_accuracy_type position_accuracy;




  typedef boost::shared_ptr< ::mst_midg::IMU_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mst_midg::IMU_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct IMU_

typedef ::mst_midg::IMU_<std::allocator<void> > IMU;

typedef boost::shared_ptr< ::mst_midg::IMU > IMUPtr;
typedef boost::shared_ptr< ::mst_midg::IMU const> IMUConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mst_midg::IMU_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mst_midg::IMU_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mst_midg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'mst_midg': ['/home/enterprise/enterprise_ws/src/mst_midg/msg'], 'sensor_msgs': ['/opt/ros/hydro/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/hydro/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mst_midg::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mst_midg::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mst_midg::IMU_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mst_midg::IMU_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mst_midg::IMU_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mst_midg::IMU_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mst_midg::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "24a707f7b1bd25df70e9c37ca3771892";
  }

  static const char* value(const ::mst_midg::IMU_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x24a707f7b1bd25dfULL;
  static const uint64_t static_value2 = 0x70e9c37ca3771892ULL;
};

template<class ContainerAllocator>
struct DataType< ::mst_midg::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mst_midg/IMU";
  }

  static const char* value(const ::mst_midg::IMU_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mst_midg::IMU_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64     latitude\n\
float64     longitude\n\
float64     altitude\n\
float64     heading\n\
float64     speed\n\
float64     angular_rate\n\
float64     gps_time\n\
bool        position_valid\n\
bool        heading_valid\n\
bool        speed_valid\n\
bool        angular_rate_valid\n\
float64     position_accuracy\n\
";
  }

  static const char* value(const ::mst_midg::IMU_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mst_midg::IMU_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
      stream.next(m.heading);
      stream.next(m.speed);
      stream.next(m.angular_rate);
      stream.next(m.gps_time);
      stream.next(m.position_valid);
      stream.next(m.heading_valid);
      stream.next(m.speed_valid);
      stream.next(m.angular_rate_valid);
      stream.next(m.position_accuracy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct IMU_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mst_midg::IMU_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mst_midg::IMU_<ContainerAllocator>& v)
  {
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "angular_rate: ";
    Printer<double>::stream(s, indent + "  ", v.angular_rate);
    s << indent << "gps_time: ";
    Printer<double>::stream(s, indent + "  ", v.gps_time);
    s << indent << "position_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.position_valid);
    s << indent << "heading_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.heading_valid);
    s << indent << "speed_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.speed_valid);
    s << indent << "angular_rate_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.angular_rate_valid);
    s << indent << "position_accuracy: ";
    Printer<double>::stream(s, indent + "  ", v.position_accuracy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MST_MIDG_MESSAGE_IMU_H
