
with source as (

    select * from {{ source('raw_marketo', 'activity_sfdc_activity_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_owner,
        activity_type_id,
        campaign_id,
        description,
        due_date,
        is_task,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        priority,
        status,
        duee_date,
        action_result,
        partition_date

    from source

)

select * from renamed
