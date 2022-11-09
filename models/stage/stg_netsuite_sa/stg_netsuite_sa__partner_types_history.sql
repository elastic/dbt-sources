
with source as (

    select * from {{ source('raw_netsuite_sa', 'partner_types_history') }}

),

renamed as (

    select
        fivetran_index,
        partner_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        isinactive,
        name,
        parent_id,
        partner_type_extid,
        partner_type_id,
        partition_date

    from source

)

select * from renamed
