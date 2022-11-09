
with source as (

    select * from {{ source('raw_salesforce', 'list_view_chart_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        aggregate_field,
        aggregate_type,
        chart_type,
        created_by_id,
        created_date,
        developer_name,
        grouping_field,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        owner_id,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
