
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_data_transformation_table_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_description_c,
        fferpcore_dtt_number_c,
        fferpcore_required_source_values_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
