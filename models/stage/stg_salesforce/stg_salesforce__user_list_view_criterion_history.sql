
with source as (

    select * from {{ source('raw_salesforce', 'user_list_view_criterion_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        column_name,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        operation,
        sort_order,
        system_modstamp,
        user_list_view_id,
        value,
        _fivetran_deleted

    from source

)

select * from renamed
