
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_split_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_id,
        split,
        split_amount,
        split_note,
        split_owner_id,
        split_percentage,
        split_type_id,
        system_modstamp,
        type_c,
        split_id_c,
        my_splits_c,
        legacy_id_c,
        oldid_c

    from source

)

select * from renamed
