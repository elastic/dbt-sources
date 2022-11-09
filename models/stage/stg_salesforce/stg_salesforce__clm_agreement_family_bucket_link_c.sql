
with source as (

    select * from {{ source('raw_salesforce', 'clm_agreement_family_bucket_link_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        agreement_family_bucket_c,
        agreement_family_summary_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
