
with source as (

    select * from {{ source('raw_docebo_internal', 'reports') }}

),

renamed as (

    select
        reportname,
        type,
        idreport,
        userid,
        firstname,
        lastname,
        createdby,
        creationdate

    from source

)

select * from renamed
