
with source as (

    select * from {{ source('raw_salesforce', 'test_suite_membership_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        apex_class_id,
        apex_test_suite_id,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
