
with source as (

    select * from {{ source('raw_salesforce', 'sic_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        comments_c,
        created_by_id,
        created_date,
        currency_iso_code,
        elastic_sector_c,
        elastic_sub_sector_c,
        elastic_vertical_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sic_code_c,
        sic_description_c,
        system_modstamp

    from source

)

select * from renamed
