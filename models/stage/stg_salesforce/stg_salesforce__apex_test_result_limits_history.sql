
with source as (

    select * from {{ source('raw_salesforce', 'apex_test_result_limits_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        apex_test_result_id,
        async_calls,
        callouts,
        cpu,
        created_by_id,
        created_date,
        dml,
        dml_rows,
        email,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        limit_context,
        limit_exceptions,
        mobile_push,
        query_rows,
        soql,
        sosl,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
