
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaitemmapping') }}

),

renamed as (

    select
        avaitemmapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        avaitemmapping_extid,
        date_created,
        date_deleted,
        is_inactive,
        item_id,
        last_modified_date,
        parent_id,
        tax_code_mapping,
        user_defined_1,
        user_defined_2

    from source

)

select * from renamed
