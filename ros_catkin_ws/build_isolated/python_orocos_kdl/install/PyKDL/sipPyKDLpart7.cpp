/*
 * Module code.
 *
 * Generated by SIP 4.16.4 on Wed Aug  9 10:33:29 2017
 */

#include "sipAPIPyKDL.h"

#line 26 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/frames.sip"
#include <kdl/frames.hpp>
#include <kdl/frames_io.hpp>
#include <sstream>
using namespace KDL;
#line 15 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"

#line 44 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/framevel.sip"
#include <kdl/framevel.hpp>
using namespace KDL;
#line 20 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"


PyDoc_STRVAR(doc_Vector_x, "Vector.x(float)\n"
    "Vector.x() -> float");

extern "C" {static PyObject *meth_Vector_x(PyObject *, PyObject *);}
static PyObject *meth_Vector_x(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        double a0;
        Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "Bd", &sipSelf, sipType_Vector, &sipCpp, &a0))
        {
            sipCpp->x(a0);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    {
        const Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_Vector, &sipCpp))
        {
            double sipRes;

            sipRes = sipCpp->x();

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_x, doc_Vector_x);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_y, "Vector.y(float)\n"
    "Vector.y() -> float");

extern "C" {static PyObject *meth_Vector_y(PyObject *, PyObject *);}
static PyObject *meth_Vector_y(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        double a0;
        Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "Bd", &sipSelf, sipType_Vector, &sipCpp, &a0))
        {
            sipCpp->y(a0);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    {
        const Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_Vector, &sipCpp))
        {
            double sipRes;

            sipRes = sipCpp->y();

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_y, doc_Vector_y);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_z, "Vector.z(float)\n"
    "Vector.z() -> float");

extern "C" {static PyObject *meth_Vector_z(PyObject *, PyObject *);}
static PyObject *meth_Vector_z(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        double a0;
        Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "Bd", &sipSelf, sipType_Vector, &sipCpp, &a0))
        {
            sipCpp->z(a0);

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    {
        const Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_Vector, &sipCpp))
        {
            double sipRes;

            sipRes = sipCpp->z();

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_z, doc_Vector_z);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_ReverseSign, "Vector.ReverseSign()");

extern "C" {static PyObject *meth_Vector_ReverseSign(PyObject *, PyObject *);}
static PyObject *meth_Vector_ReverseSign(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_Vector, &sipCpp))
        {
            sipCpp->ReverseSign();

            Py_INCREF(Py_None);
            return Py_None;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_ReverseSign, doc_Vector_ReverseSign);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_Zero, "Vector.Zero() -> Vector");

extern "C" {static PyObject *meth_Vector_Zero(PyObject *, PyObject *);}
static PyObject *meth_Vector_Zero(PyObject *, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        if (sipParseArgs(&sipParseErr, sipArgs, ""))
        {
            Vector*sipRes;

            sipRes = new Vector(Vector::Zero());

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_Zero, doc_Vector_Zero);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_Norm, "Vector.Norm() -> float");

extern "C" {static PyObject *meth_Vector_Norm(PyObject *, PyObject *);}
static PyObject *meth_Vector_Norm(PyObject *sipSelf, PyObject *sipArgs)
{
    PyObject *sipParseErr = NULL;

    {
        Vector *sipCpp;

        if (sipParseArgs(&sipParseErr, sipArgs, "B", &sipSelf, sipType_Vector, &sipCpp))
        {
            double sipRes;

            sipRes = sipCpp->Norm();

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_Norm, doc_Vector_Norm);

    return NULL;
}


PyDoc_STRVAR(doc_Vector_Normalize, "Vector.Normalize(float eps=epsilon) -> float");

extern "C" {static PyObject *meth_Vector_Normalize(PyObject *, PyObject *, PyObject *);}
static PyObject *meth_Vector_Normalize(PyObject *sipSelf, PyObject *sipArgs, PyObject *sipKwds)
{
    PyObject *sipParseErr = NULL;

    {
        double a0 = epsilon;
        Vector *sipCpp;

        static const char *sipKwdList[] = {
            sipName_eps,
        };

        if (sipParseKwdArgs(&sipParseErr, sipArgs, sipKwds, sipKwdList, NULL, "B|d", &sipSelf, sipType_Vector, &sipCpp, &a0))
        {
            double sipRes;

            sipRes = sipCpp->Normalize(a0);

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName_Normalize, doc_Vector_Normalize);

    return NULL;
}


extern "C" {static PyObject *slot_Vector___neg__(PyObject *);}
static PyObject *slot_Vector___neg__(PyObject *sipSelf)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;


    {
        {
            Vector*sipRes;

            sipRes = new Vector(-(*sipCpp));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    return 0;
}


extern "C" {static PyObject *slot_Vector___mul__(PyObject *,PyObject *);}
static PyObject *slot_Vector___mul__(PyObject *sipArg0,PyObject *sipArg1)
{
    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;
        double a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9d", sipType_Vector, &a0, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((*a0 * a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    {
        double a0;
        const Vector* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "dJ9", &a0, sipType_Vector, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((a0 * *a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    {
        const Vector* a0;
        const Vector* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_Vector, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((*a0 * *a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    {
        const Vector* a0;
        const VectorVel* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_VectorVel, &a1))
        {
            VectorVel*sipRes;

            sipRes = new VectorVel((*a0 * *a1));

            return sipConvertFromNewType(sipRes,sipType_VectorVel,NULL);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,mul_slot,NULL,sipArg0,sipArg1);
}


extern "C" {static PyObject *slot_Vector___div__(PyObject *,PyObject *);}
static PyObject *slot_Vector___div__(PyObject *sipArg0,PyObject *sipArg1)
{
    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;
        double a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9d", sipType_Vector, &a0, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((*a0 / a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,div_slot,NULL,sipArg0,sipArg1);
}


extern "C" {static PyObject *slot_Vector___add__(PyObject *,PyObject *);}
static PyObject *slot_Vector___add__(PyObject *sipArg0,PyObject *sipArg1)
{
    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;
        const Vector* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_Vector, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((*a0 + *a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    {
        const Vector* a0;
        const VectorVel* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_VectorVel, &a1))
        {
            VectorVel*sipRes;

            sipRes = new VectorVel((*a0 + *a1));

            return sipConvertFromNewType(sipRes,sipType_VectorVel,NULL);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,add_slot,NULL,sipArg0,sipArg1);
}


extern "C" {static PyObject *slot_Vector___sub__(PyObject *,PyObject *);}
static PyObject *slot_Vector___sub__(PyObject *sipArg0,PyObject *sipArg1)
{
    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;
        const Vector* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_Vector, &a1))
        {
            Vector*sipRes;

            sipRes = new Vector((*a0 - *a1));

            return sipConvertFromNewType(sipRes,sipType_Vector,NULL);
        }
    }

    {
        const Vector* a0;
        const VectorVel* a1;

        if (sipParsePair(&sipParseErr, sipArg0, sipArg1, "J9J9", sipType_Vector, &a0, sipType_VectorVel, &a1))
        {
            VectorVel*sipRes;

            sipRes = new VectorVel((*a0 - *a1));

            return sipConvertFromNewType(sipRes,sipType_VectorVel,NULL);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,sub_slot,NULL,sipArg0,sipArg1);
}


extern "C" {static PyObject *slot_Vector___eq__(PyObject *,PyObject *);}
static PyObject *slot_Vector___eq__(PyObject *sipSelf,PyObject *sipArg)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;

    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;

        if (sipParseArgs(&sipParseErr, sipArg, "1J9", sipType_Vector, &a0))
        {
            bool sipRes;

            sipRes = operator==((*sipCpp), *a0);

            return PyBool_FromLong(sipRes);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,eq_slot,sipType_Vector,sipSelf,sipArg);
}


extern "C" {static PyObject *slot_Vector___ne__(PyObject *,PyObject *);}
static PyObject *slot_Vector___ne__(PyObject *sipSelf,PyObject *sipArg)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;

    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;

        if (sipParseArgs(&sipParseErr, sipArg, "1J9", sipType_Vector, &a0))
        {
            bool sipRes;

            sipRes = operator!=((*sipCpp), *a0);

            return PyBool_FromLong(sipRes);
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    return sipPySlotExtend(&sipModuleAPI_PyKDL,ne_slot,sipType_Vector,sipSelf,sipArg);
}


extern "C" {static PyObject *slot_Vector___iadd__(PyObject *,PyObject *);}
static PyObject *slot_Vector___iadd__(PyObject *sipSelf,PyObject *sipArg)
{
    if (!PyObject_TypeCheck(sipSelf, sipTypeAsPyTypeObject(sipType_Vector)))
    {
        Py_INCREF(Py_NotImplemented);
        return Py_NotImplemented;
    }

    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;

    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;

        if (sipParseArgs(&sipParseErr, sipArg, "1J9", sipType_Vector, &a0))
        {
            sipCpp->Vector::operator+=(*a0);

            Py_INCREF(sipSelf);
            return sipSelf;
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    PyErr_Clear();

    Py_INCREF(Py_NotImplemented);
    return Py_NotImplemented;
}


extern "C" {static PyObject *slot_Vector___isub__(PyObject *,PyObject *);}
static PyObject *slot_Vector___isub__(PyObject *sipSelf,PyObject *sipArg)
{
    if (!PyObject_TypeCheck(sipSelf, sipTypeAsPyTypeObject(sipType_Vector)))
    {
        Py_INCREF(Py_NotImplemented);
        return Py_NotImplemented;
    }

    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;

    PyObject *sipParseErr = NULL;

    {
        const Vector* a0;

        if (sipParseArgs(&sipParseErr, sipArg, "1J9", sipType_Vector, &a0))
        {
            sipCpp->Vector::operator-=(*a0);

            Py_INCREF(sipSelf);
            return sipSelf;
        }
    }

    Py_XDECREF(sipParseErr);

    if (sipParseErr == Py_None)
        return NULL;

    PyErr_Clear();

    Py_INCREF(Py_NotImplemented);
    return Py_NotImplemented;
}


extern "C" {static PyObject *slot_Vector___repr__(PyObject *);}
static PyObject *slot_Vector___repr__(PyObject *sipSelf)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;


    {
        {
            const char*sipRes = 0;

#line 65 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/frames.sip"
    std::ostringstream oss;
    oss<<(*sipCpp);
    std::string s(oss.str());
    sipRes=s.c_str();
#line 623 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"

            if (sipRes == NULL)
            {
                Py_INCREF(Py_None);
                return Py_None;
            }

            return SIPBytes_FromString(sipRes);
        }
    }

    return 0;
}


extern "C" {static int slot_Vector___setitem__(PyObject *,PyObject *);}
static int slot_Vector___setitem__(PyObject *sipSelf,PyObject *sipArgs)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return -1;

    PyObject *sipParseErr = NULL;

    {
        int a0;
        double a1;

        if (sipParseArgs(&sipParseErr, sipArgs, "id", &a0, &a1))
        {
#line 56 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/frames.sip"
    if (a0 < 0 || a0 > 2) {
        PyErr_SetString(PyExc_IndexError, "Vector index out of range");
        return 0;
    }
    (*sipCpp)(a0)=a1;
#line 661 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"

            return 0;
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName___setitem__, NULL);

    return -1;
}


extern "C" {static PyObject *slot_Vector___getitem__(PyObject *,PyObject *);}
static PyObject *slot_Vector___getitem__(PyObject *sipSelf,PyObject *sipArg)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipGetCppPtr((sipSimpleWrapper *)sipSelf,sipType_Vector));

    if (!sipCpp)
        return 0;

    PyObject *sipParseErr = NULL;

    {
        int a0;

        if (sipParseArgs(&sipParseErr, sipArg, "1i", &a0))
        {
            double sipRes = 0;

#line 47 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/frames.sip"
    if (a0 < 0 || a0 > 2) {
	    PyErr_SetString(PyExc_IndexError, "Vector index out of range");
	    return 0;
    }
    sipRes=(*sipCpp)(a0);
#line 697 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"

            return PyFloat_FromDouble(sipRes);
        }
    }

    /* Raise an exception if the arguments couldn't be parsed. */
    sipNoMethod(sipParseErr, sipName_Vector, sipName___getitem__, NULL);

    return 0;
}


/* Cast a pointer to a type somewhere in its superclass hierarchy. */
extern "C" {static void *cast_Vector(void *, const sipTypeDef *);}
static void *cast_Vector(void *ptr, const sipTypeDef *targetType)
{
    if (targetType == sipType_Vector)
        return ptr;

    return NULL;
}


/* Call the instance's destructor. */
extern "C" {static void release_Vector(void *, int);}
static void release_Vector(void *sipCppV,int)
{
    delete reinterpret_cast<Vector *>(sipCppV);
}


extern "C" {static PyObject *pickle_Vector(void *);}
static PyObject *pickle_Vector(void *sipCppV)
{
    Vector *sipCpp = reinterpret_cast<Vector *>(sipCppV);
    PyObject *sipRes;

#line 82 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/frames.sip"
    sipRes = Py_BuildValue("ddd", sipCpp->x(), sipCpp->y(), sipCpp->z());
#line 737 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"

    return sipRes;
}


extern "C" {static void assign_Vector(void *, SIP_SSIZE_T, const void *);}
static void assign_Vector(void *sipDst, SIP_SSIZE_T sipDstIdx, const void *sipSrc)
{
    reinterpret_cast<Vector *>(sipDst)[sipDstIdx] = *reinterpret_cast<const Vector *>(sipSrc);
}


extern "C" {static void *array_Vector(SIP_SSIZE_T);}
static void *array_Vector(SIP_SSIZE_T sipNrElem)
{
    return new Vector[sipNrElem];
}


extern "C" {static void *copy_Vector(const void *, SIP_SSIZE_T);}
static void *copy_Vector(const void *sipSrc, SIP_SSIZE_T sipSrcIdx)
{
    return new Vector(reinterpret_cast<const Vector *>(sipSrc)[sipSrcIdx]);
}


extern "C" {static void dealloc_Vector(sipSimpleWrapper *);}
static void dealloc_Vector(sipSimpleWrapper *sipSelf)
{
    if (sipIsPyOwned(sipSelf))
    {
        release_Vector(sipGetAddress(sipSelf),0);
    }
}


extern "C" {static void *init_type_Vector(sipSimpleWrapper *, PyObject *, PyObject *, PyObject **, PyObject **, PyObject **);}
static void *init_type_Vector(sipSimpleWrapper *, PyObject *sipArgs, PyObject *sipKwds, PyObject **sipUnused, PyObject **, PyObject **sipParseErr)
{
    Vector *sipCpp = 0;

    {
        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, NULL, sipUnused, ""))
        {
            sipCpp = new Vector();

            return sipCpp;
        }
    }

    {
        double a0;
        double a1;
        double a2;

        static const char *sipKwdList[] = {
            sipName_x,
            sipName_y,
            sipName_z,
        };

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, sipKwdList, sipUnused, "ddd", &a0, &a1, &a2))
        {
            sipCpp = new Vector(a0,a1,a2);

            return sipCpp;
        }
    }

    {
        const Vector* a0;

        static const char *sipKwdList[] = {
            sipName_arg,
        };

        if (sipParseKwdArgs(sipParseErr, sipArgs, sipKwds, sipKwdList, sipUnused, "J9", sipType_Vector, &a0))
        {
            sipCpp = new Vector(*a0);

            return sipCpp;
        }
    }

    return NULL;
}


/* Define this type's Python slots. */
static sipPySlotDef slots_Vector[] = {
    {(void *)slot_Vector___neg__, neg_slot},
    {(void *)slot_Vector___mul__, mul_slot},
    {(void *)slot_Vector___div__, div_slot},
    {(void *)slot_Vector___add__, add_slot},
    {(void *)slot_Vector___sub__, sub_slot},
    {(void *)slot_Vector___eq__, eq_slot},
    {(void *)slot_Vector___ne__, ne_slot},
    {(void *)slot_Vector___iadd__, iadd_slot},
    {(void *)slot_Vector___isub__, isub_slot},
    {(void *)slot_Vector___repr__, repr_slot},
    {(void *)slot_Vector___setitem__, setitem_slot},
    {(void *)slot_Vector___getitem__, getitem_slot},
    {0, (sipPySlotType)0}
};


static PyMethodDef methods_Vector[] = {
    {SIP_MLNAME_CAST(sipName_Norm), meth_Vector_Norm, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_Norm)},
    {SIP_MLNAME_CAST(sipName_Normalize), (PyCFunction)meth_Vector_Normalize, METH_VARARGS|METH_KEYWORDS, SIP_MLDOC_CAST(doc_Vector_Normalize)},
    {SIP_MLNAME_CAST(sipName_ReverseSign), meth_Vector_ReverseSign, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_ReverseSign)},
    {SIP_MLNAME_CAST(sipName_Zero), meth_Vector_Zero, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_Zero)},
    {SIP_MLNAME_CAST(sipName_x), meth_Vector_x, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_x)},
    {SIP_MLNAME_CAST(sipName_y), meth_Vector_y, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_y)},
    {SIP_MLNAME_CAST(sipName_z), meth_Vector_z, METH_VARARGS, SIP_MLDOC_CAST(doc_Vector_z)}
};

PyDoc_STRVAR(doc_Vector, "\1Vector()\n"
    "Vector(float, float, float)\n"
    "Vector(Vector)");


sipClassTypeDef sipTypeDef_PyKDL_Vector = {
    {
        -1,
        0,
        0,
        SIP_TYPE_CLASS,
        sipNameNr_Vector,
        {0}
    },
    {
        sipNameNr_Vector,
        {0, 0, 1},
        7, methods_Vector,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    },
    doc_Vector,
    -1,
    -1,
    0,
    slots_Vector,
    init_type_Vector,
    0,
    0,
#if PY_MAJOR_VERSION >= 3
    0,
    0,
#else
    0,
    0,
    0,
    0,
#endif
    dealloc_Vector,
    assign_Vector,
    array_Vector,
    copy_Vector,
    release_Vector,
    cast_Vector,
    0,
    0,
    0,
    pickle_Vector,
    0,
    0
};

#line 21 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/std_string.sip"
#include <string>
#line 910 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"



extern "C" {static void assign_std_string(void *, SIP_SSIZE_T, const void *);}
static void assign_std_string(void *sipDst, SIP_SSIZE_T sipDstIdx, const void *sipSrc)
{
    reinterpret_cast<std::string *>(sipDst)[sipDstIdx] = *reinterpret_cast<const std::string *>(sipSrc);
}


extern "C" {static void *array_std_string(SIP_SSIZE_T);}
static void *array_std_string(SIP_SSIZE_T sipNrElem)
{
    return new std::string[sipNrElem];
}


extern "C" {static void *copy_std_string(const void *, SIP_SSIZE_T);}
static void *copy_std_string(const void *sipSrc, SIP_SSIZE_T sipSrcIdx)
{
    return new std::string(reinterpret_cast<const std::string *>(sipSrc)[sipSrcIdx]);
}


/* Call the mapped type's destructor. */
extern "C" {static void release_std_string(void *, int);}
static void release_std_string(void *ptr, int)
{
    delete reinterpret_cast<std::string *>(ptr);
}



extern "C" {static int convertTo_std_string(PyObject *, void **, int *, PyObject *);}
static int convertTo_std_string(PyObject *sipPy,void **sipCppPtrV,int *sipIsErr,PyObject *)
{
    std::string **sipCppPtr = reinterpret_cast<std::string **>(sipCppPtrV);

#line 36 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/std_string.sip"
     // Allow a Python string (or a unicode string) whenever a string is
     // expected.
    // If argument is a Unicode string, just decode it to UTF-8
    // If argument is a Python string, assume it's UTF-8
     if (sipIsErr == NULL)
#if PY_MAJOR_VERSION < 3
        return (PyString_Check(sipPy) || PyUnicode_Check(sipPy));
#else
        return PyUnicode_Check(sipPy);
#endif
     if (sipPy == Py_None) {
        *sipCppPtr = new std::string;
         return 1;
     }
     if (PyUnicode_Check(sipPy)) {
        PyObject* s = PyUnicode_AsEncodedString(sipPy, "UTF-8", "");
        *sipCppPtr = new std::string(PyUnicode_AS_DATA(s));
        Py_DECREF(s);
        return 1;
     }
#if PY_MAJOR_VERSION < 3
     if (PyString_Check(sipPy)) {
        *sipCppPtr = new std::string(PyString_AS_STRING(sipPy));
        return 1;
     }
#endif

     return 0;
#line 978 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"
}


extern "C" {static PyObject *convertFrom_std_string(void *, PyObject *);}
static PyObject *convertFrom_std_string(void *sipCppV, PyObject *)
{
   std::string *sipCpp = reinterpret_cast<std::string *>(sipCppV);

#line 25 "/home/pi/ros_catkin_ws/src/python_orocos_kdl/python_orocos_kdl/PyKDL/std_string.sip"
    // convert an std::string to a Python (unicode) string
    PyObject* newstring;
    newstring = PyUnicode_DecodeUTF8(sipCpp->c_str(), sipCpp->length(), NULL);
    if(newstring == NULL) {
        PyErr_Clear();
        newstring = PyUnicode_FromString(sipCpp->c_str());
    }
    return newstring;
#line 996 "/home/pi/ros_catkin_ws/build_isolated/python_orocos_kdl/install/PyKDL/sipPyKDLpart7.cpp"
}


sipMappedTypeDef sipTypeDef_PyKDL_std_string = {
    {
        -1,
        0,
        0,
        SIP_TYPE_MAPPED,
        sipNameNr_std__string,
        {0}
    },
    {
        -1,
        {0, 0, 1},
        0, 0,
        0, 0,
        0, 0,
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    },
    assign_std_string,
    array_std_string,
    copy_std_string,
    release_std_string,
    convertTo_std_string,
    convertFrom_std_string
};
