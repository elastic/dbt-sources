
with source as (

    select * from {{ source('raw_netsuite_sa', 'itr_system_parameter') }}

),

renamed as (

    select
        itr_system_parameter_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        itr_system_parameter_extid,
        itr_system_parameter_name,
        last_modified_date,
        parent_id,
        value_0

    from source

)

select * from renamed
