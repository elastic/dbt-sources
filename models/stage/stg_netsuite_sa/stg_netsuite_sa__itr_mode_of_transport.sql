
with source as (

    select * from {{ source('raw_netsuite_sa', 'itr_mode_of_transport') }}

),

renamed as (

    select
        itr_mode_of_transport_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        date_created,
        date_deleted,
        is_inactive,
        itr_mode_of_transport_extid,
        itr_mode_of_transport_name,
        last_modified_date,
        nexus,
        parent_id

    from source

)

select * from renamed
