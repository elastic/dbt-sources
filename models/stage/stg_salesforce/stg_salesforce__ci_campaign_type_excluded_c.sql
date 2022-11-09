
with source as (

    select * from {{ source('raw_salesforce', 'ci_campaign_type_excluded_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        campaign_type_c,
        created_by_id,
        created_date,
        currency_iso_code,
        exclude_c,
        instance_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
