
with source as (

    select * from {{ source('raw_netsuite', 'avaentityusemapping_history') }}

),

renamed as (

    select
        address_id,
        avaentityusemapping_extid,
        avaentityusemapping_id,
        customer_id,
        customer_id_0,
        date_created,
        entityuse_code_id,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
