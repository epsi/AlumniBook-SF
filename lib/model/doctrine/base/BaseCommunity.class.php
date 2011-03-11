<?php

/**
 * BaseCommunity
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $cid
 * @property string $community
 * @property string $brief
 * @property integer $department_id
 * @property integer $faculty_id
 * @property integer $program_id
 * @property Department $Department
 * @property Faculty $Faculty
 * @property Program $Program
 * @property ACommunities $ACommunities
 * 
 * @method integer      getCid()           Returns the current record's "cid" value
 * @method string       getCommunity()     Returns the current record's "community" value
 * @method string       getBrief()         Returns the current record's "brief" value
 * @method integer      getDepartmentId()  Returns the current record's "department_id" value
 * @method integer      getFacultyId()     Returns the current record's "faculty_id" value
 * @method integer      getProgramId()     Returns the current record's "program_id" value
 * @method Department   getDepartment()    Returns the current record's "Department" value
 * @method Faculty      getFaculty()       Returns the current record's "Faculty" value
 * @method Program      getProgram()       Returns the current record's "Program" value
 * @method ACommunities getACommunities()  Returns the current record's "ACommunities" value
 * @method Community    setCid()           Sets the current record's "cid" value
 * @method Community    setCommunity()     Sets the current record's "community" value
 * @method Community    setBrief()         Sets the current record's "brief" value
 * @method Community    setDepartmentId()  Sets the current record's "department_id" value
 * @method Community    setFacultyId()     Sets the current record's "faculty_id" value
 * @method Community    setProgramId()     Sets the current record's "program_id" value
 * @method Community    setDepartment()    Sets the current record's "Department" value
 * @method Community    setFaculty()       Sets the current record's "Faculty" value
 * @method Community    setProgram()       Sets the current record's "Program" value
 * @method Community    setACommunities()  Sets the current record's "ACommunities" value
 * 
 * @package    alumni
 * @subpackage model
 * @author     E.R. Nurwijayadi <epsi.rns@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseCommunity extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('community');
        $this->hasColumn('cid', 'integer', 2, array(
             'type' => 'integer',
             'primary' => true,
             'autoincrement' => true,
             'length' => 2,
             ));
        $this->hasColumn('community', 'string', 50, array(
             'type' => 'string',
             'notnull' => true,
             'unique' => true,
             'length' => 50,
             ));
        $this->hasColumn('brief', 'string', 2, array(
             'type' => 'string',
             'unique' => true,
             'length' => 2,
             ));
        $this->hasColumn('department_id', 'integer', 2, array(
             'type' => 'integer',
             'notnull' => true,
             'length' => 2,
             ));
        $this->hasColumn('faculty_id', 'integer', 2, array(
             'type' => 'integer',
             'notnull' => true,
             'length' => 2,
             ));
        $this->hasColumn('program_id', 'integer', 2, array(
             'type' => 'integer',
             'notnull' => true,
             'length' => 2,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Department', array(
             'local' => 'department_id',
             'foreign' => 'department_id'));

        $this->hasOne('Faculty', array(
             'local' => 'faculty_id',
             'foreign' => 'faculty_id'));

        $this->hasOne('Program', array(
             'local' => 'program_id',
             'foreign' => 'program_id'));

        $this->hasOne('ACommunities', array(
             'local' => 'cid',
             'foreign' => 'cid'));
    }
}