
with source as (

    select * from {{ source('raw_marketo', 'activity_new_lead_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        created_date,
        form_name,
        lead_id,
        lead_source,
        primary_attribute_value,
        primary_attribute_value_id,
        sfdc_type,
        source_type,
        list_name,
        api_method_name,
        modifying_user,
        request_id,
        action_result,
        partition_date

    from source

)

select * from renamed
