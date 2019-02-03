select  ds.id,
        ds.code,
        ds.lastname || ' ' || ds.firstname || ' ' || ds.middlename distributor_fio,
        pd1.*,
        pd2.*,
        pd3.*,
        pd4.*,
        pd5.*,
        pd6.*,
        pd7.*,
        pd8.*,
        pd9.*,
        pd10.*,
        pd11.*,
        pd12.*
          from distributors ds
            left join mon1 pd1 on (ds.code=pd1.code)
            left join mon2 pd2 on (ds.code=pd2.code)
            left join mon3 pd3 on (ds.code=pd3.code)
            left join mon4 pd4 on (ds.code=pd4.code)
            left join mon5 pd5 on (ds.code=pd5.code)
            left join mon6 pd6 on (ds.code=pd6.code)
            left join mon7 pd7 on (ds.code=pd7.code)
            left join mon8 pd8 on (ds.code=pd8.code)
            left join mon9 pd9 on (ds.code=pd9.code)
            left join mon10 pd10 on (ds.code=pd10.code)
            left join mon11 pd11 on (ds.code=pd11.code)
            left join mon12 pd12 on (ds.code=pd12.code)
             where ds.deletedate is null
                   --and ds.code='888010008'

