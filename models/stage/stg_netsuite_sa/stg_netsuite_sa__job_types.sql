
with source as (

    select * from {{ source('raw_netsuite_sa', 'job_types') }}

),

renamed as (

    select
        job_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        isinactive,
        job_type_extid,
        name,
        parent_id

    from source

)

select * from renamed
