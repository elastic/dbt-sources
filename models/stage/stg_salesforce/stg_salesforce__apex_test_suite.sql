
with source as (

    select * from {{ source('raw_salesforce', 'apex_test_suite') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        test_suite_name,
        _fivetran_deleted

    from source

)

select * from renamed
