
with source as (

    select * from {{ source('raw_marketo', 'activity_push_lead_to_marketo_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        reason,
        source,
        api_method_name,
        modifying_user,
        request_id,
        partition_date

    from source

)

select * from renamed
