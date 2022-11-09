
with source as (

    select * from {{ source('raw_salesforce', 'multi_year_renewal_stage_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        probability_c,
        setup_owner_id,
        stage_c,
        system_modstamp

    from source

)

select * from renamed
