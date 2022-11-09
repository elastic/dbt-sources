
with source as (

    select * from {{ source('raw_salesforce', 'dnboptimizer_dnb_family_tree_data_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dnboptimizer_family_tree_job_id_c,
        dnboptimizer_family_tree_job_status_c,
        dnboptimizer_job_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
