
with source as (

    select * from {{ source('raw_marketo', 'activity_sent_forward_to_friend_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        primary_attribute_value,
        primary_attribute_value_id

    from source

)

select * from renamed
