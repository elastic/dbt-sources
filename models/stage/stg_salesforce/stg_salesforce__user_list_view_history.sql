
with source as (

    select * from {{ source('raw_salesforce', 'user_list_view_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_viewed_chart,
        list_view_id,
        sobject_type,
        system_modstamp,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
