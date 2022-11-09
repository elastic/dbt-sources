
with source as (

    select * from {{ source('raw_salesforce', 'dnboptimizer_dn_baccount_metadata_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dnboptimizer_account_c,
        dnboptimizer_account_id_c,
        dnboptimizer_linkage_opportunity_type_c,
        dnboptimizer_parent_duns_c,
        dnboptimizer_parent_id_c,
        dnboptimizer_reparented_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
