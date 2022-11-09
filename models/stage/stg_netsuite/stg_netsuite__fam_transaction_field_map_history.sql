
with source as (

    select * from {{ source('raw_netsuite', 'fam_transaction_field_map_history') }}

),

renamed as (

    select
        asset_field_id,
        date_created,
        description,
        fam_transaction_field_map_exti,
        fam_transaction_field_map_id,
        is_inactive,
        last_modified_date,
        parent_id,
        proposal_field_id,
        source_transaction_field_id,
        transaction_field_id,
        transaction_line_field

    from source

)

select * from renamed
