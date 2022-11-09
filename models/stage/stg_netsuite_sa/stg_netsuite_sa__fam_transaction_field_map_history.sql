
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_transaction_field_map_history') }}

),

renamed as (

    select
        fam_transaction_field_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_field_id,
        date_created,
        date_deleted,
        description,
        fam_transaction_field_map_exti,
        is_inactive,
        last_modified_date,
        parent_id,
        proposal_field_id,
        source_transaction_field_id,
        transaction_field_id,
        transaction_line_field,
        partition_date

    from source

)

select * from renamed
